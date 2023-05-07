import 'package:card_swiper/card_swiper.dart';
import 'package:eohdarksystem/app/core/ui/helpers/size_extensions.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_background.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_menu.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_page/projects_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProjectDesktop extends StatefulWidget {
  const ProjectDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectDesktop> createState() => _ProjectDesktopState();
}

class _ProjectDesktopState extends State<ProjectDesktop> {
  final controller = Modular.get<ProjectsStore>();

  @override
  void initState() {
    super.initState();
    controller.initPage();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              const CustomBackGround(opacity: 0.20),
              FutureBuilder(
                future: controller.futureProject,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return const Center(
                        child: Text('Connection None'),
                      );

                    case ConnectionState.waiting:
                    case ConnectionState.active:
                      return const Center(child: CircularProgressIndicator());
                    case ConnectionState.done:
                      if (snapshot.hasError) {
                        return const Center(
                            child: Text('Erro ao buscar dados '));
                      }
                      if (!snapshot.hasData) {
                        return const Center(
                            child: Text('Nenhum dado encontrado '));
                      }
                      if (snapshot.hasData) {
                        var result = snapshot.data;

                        return Swiper(
                          scrollDirection: Axis.horizontal,
                          itemHeight: context.percentHeight(0.8),
                          itemWidth: context.percentWidth(1),
                          layout: SwiperLayout.STACK,
                          pagination: const SwiperPagination(
                              alignment: Alignment.bottomCenter),
                          itemCount: result?.length ?? 0,
                          itemBuilder: (context, index) {
                            final data = snapshot.data![index];
                            final background = data.midia?.background;

                            return Container(
                                color: Colors.transparent,
                                width: context.screenWidth,
                                height: context.screenHeight,
                                alignment: Alignment.center,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Modular.to.pushNamed(
                                                '/projects/project_details/${data.id}');
                                          },
                                          child: Image.asset(
                                            background.toString(),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.info_outlined,
                                          ),
                                          color: Colors.white,
                                          onPressed: () {
                                            _showButtomSheet(context, data);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ));
                          },
                        );
                      }
                  }
                  return Container();
                },
              ),
              const Align(alignment: Alignment.topCenter, child: CustomMenu()),
            ],
          ),
        ),
      );
    });
  }

  Future<dynamic> _showButtomSheet(BuildContext context, dynamic data) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[20],
      constraints: BoxConstraints(
        maxHeight: context.percentHeight(.5),
        maxWidth: context.percentWidth(0.3),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    size: 20.0,
                  ),
                ),
              ),
              Text(
                data.projectName!.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  data.description ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
