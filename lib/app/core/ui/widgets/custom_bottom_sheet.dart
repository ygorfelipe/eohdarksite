// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eohdarksystem/app/core/ui/helpers/size_extensions.dart';
import 'package:flutter/material.dart';



class CustomBottomSheet extends StatelessWidget {
  final String title;
  final BuildContext context;
  final String description;
  final double percentHeight;
  final double percentWidth;
  const CustomBottomSheet({
    Key? key,
    required this.title,
    required this.context,
    required this.description,
    required this.percentHeight,
    required this.percentWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double minWidth = 270;
    return IconButton(
      icon: const Icon(
        Icons.info_outlined,
        size: (minWidth < minWidth ? 5 : 20),
      ),
      color: Colors.white,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.grey[50],
          constraints: BoxConstraints(
            maxHeight: context.percentHeight(percentHeight),
            maxWidth: context.percentWidth(percentWidth),
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
                        size: (minWidth < minWidth ? 8 : 20),
                      ),
                    ),
                  ),
                  Text(
                    title.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: (minWidth < minWidth ? 30 : 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      description,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: (minWidth < minWidth ? 30 : 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

// const String title = 'SuperMagasin';
// const String desc =
//     'SuperMagasin é um projeto de e-commerce de varejo de roupas desenvolvido em Flutter e Dart. O projeto foi criado como parte de um teste avaliativo na faculdade, com o objetivo de demonstrar habilidades e conhecimentos adquiridos na área de programação.';
