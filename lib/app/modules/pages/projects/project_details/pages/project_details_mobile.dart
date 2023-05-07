import 'package:card_swiper/card_swiper.dart';
import 'package:eohdarksystem/app/core/ui/helpers/size_extensions.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_background.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_menu.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_details/project_details_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProjectDetailsMobile extends StatefulWidget {
  final int projectId;
  const ProjectDetailsMobile({Key? key, required this.projectId})
      : super(key: key);

  @override
  State<ProjectDetailsMobile> createState() => _ProjectDetailsMobileState();
}

class _ProjectDetailsMobileState extends State<ProjectDetailsMobile> {
  final controller = Modular.get<ProjectDetailsStore>();
  @override
  void initState() {
    super.initState();
    controller.initPage(widget.projectId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const CustomBackGround(opacity: 0.20),
            FutureBuilder(
              future: controller.findAllId(widget.projectId),
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
                      return const Center(child: Text('Erro ao buscar dados '));
                    }
                    if (!snapshot.hasData) {
                      return const Center(
                          child: Text('Nenhum dado encontrado '));
                    }
                    if (snapshot.hasData) {
                      var result = snapshot.data;
                      final listMidia = [result];

                      return ListView.builder(
                        itemCount: listMidia.length,
                        padding: EdgeInsets.symmetric(
                            vertical: context.percentHeight(0.02)),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final data = listMidia[index];
                          final photosUrl = data['midia']['photos'];

                          return Container(
                            color: Colors.transparent,
                            height: context.percentHeight(0.9),
                            child: Swiper(
                              scrollDirection: Axis.horizontal,
                              itemHeight: context.percentHeight(0.8),
                              itemWidth: context.screenWidth,
                              layout: SwiperLayout.STACK,
                              pagination: const SwiperPagination(
                                  alignment: Alignment.bottomCenter),
                              itemCount: photosUrl.length ?? 0,
                              itemBuilder: (context, indexP) {
                                final data = photosUrl[indexP];
                                final url = data['photoUrl'];
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Image.asset(
                                    url.toString(),
                                    fit: BoxFit.contain,
                                  ),
                                );
                              },
                            ),
                          );
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
  }
}
