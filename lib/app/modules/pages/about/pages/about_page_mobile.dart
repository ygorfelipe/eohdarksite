import 'package:eohdarksystem/app/core/ui/helpers/size_extensions.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_background.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_circle_icon_button.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_menu.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPageMobile extends StatefulWidget {
  const AboutPageMobile({Key? key}) : super(key: key);

  @override
  State<AboutPageMobile> createState() => _AboutPageMobileState();
}

class _AboutPageMobileState extends State<AboutPageMobile> {
  @override
  Widget build(BuildContext context) {
    double fontTitle = 21.0;
    const double fontContent = 16;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            const CustomBackGround(opacity: 0.20),
            Padding(
              padding: EdgeInsets.only(
                  left: context.percentHeight(0.02),
                  top: context.percentHeight(0.07),
                  right: context.percentHeight(0.02),
                  bottom: context.percentHeight(0.02)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomText(
                        label: name, fontSize: 21, fontWeight: FontWeight.bold),
                    SizedBox(height: context.percentHeight(0.01)),
                    const CustomText(label: develop, fontSize: 16),
                    SizedBox(height: context.percentHeight(0.03)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCircleIconButton(
                          onPressed: () => launchUrl(Uri.parse(
                            urlGit,
                          )),
                          assetImage: urlAssetGit,
                          radius: 20.0,
                          iconSize: 50,
                        ),
                        const SizedBox(width: 16),
                        CustomCircleIconButton(
                          onPressed: () => launchUrl(Uri.parse(urlLinkdin)),
                          assetImage: urlAssetLinkdin,
                          radius: 20.0,
                          iconSize: 50,
                        ),
                        const SizedBox(width: 16),
                        CustomCircleIconButton(
                          onPressed: () => launchUrl(
                            Uri(scheme: 'mailto', path: urlEmail),
                          ),
                          assetImage: urlAssetEmail,
                          radius: 20.0,
                          iconSize: 50,
                        ),
                      ],
                    ),
                    SizedBox(height: context.percentHeight(0.03)),
                    CustomText(
                        label: 'Formação Acadêmica',
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: context.percentHeight(0.01)),
                    const CustomText(label: academic, fontSize: fontContent),
                    SizedBox(height: context.percentHeight(0.03)),
                    CustomText(
                        label: 'Conhecimentos Específicos',
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: context.percentHeight(0.01)),
                    const CustomText(label: skills, fontSize: fontContent),
                    SizedBox(height: context.percentHeight(0.03)),
                    CustomText(
                        label: 'Conhecimentos Específicos',
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: context.percentHeight(0.01)),
                    const CustomText(label: skills, fontSize: fontContent),
                    SizedBox(height: context.percentHeight(0.03)),
                    CustomText(
                        label: 'Evolução de Carreira',
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: context.percentHeight(0.01)),
                    const CustomText(
                        label: evolutionCarrer, fontSize: fontContent),
                    SizedBox(height: context.percentHeight(0.03)),
                    CustomText(
                        label: 'Cursos/Palestras Complementares',
                        fontSize: fontTitle,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: context.percentHeight(0.01)),
                    const CustomText(
                        label: coursesAndLecture, fontSize: fontContent),
                  ],
                ),
              ),
            ),
            Container(
                color: Colors.transparent,
                height: 50,
                child: const Align(
                    alignment: Alignment.topCenter, child: CustomMenu())),
          ],
        ),
      ),
    );
  }
}

const String name = 'Ygor Felipe Pereira de Lima e Silva';
const String develop = 'Flutter & Dart developer';
const String academic =
    'Cursando - Análise e Desenvolvimento de Sistemas - Faculdade de Tecnologia (FATEC) - Prof. Antônio Belizandro Barbosa Rezende - Itapetininga - SP - 06/2023';
const String skills =
    'Conhecimentos em Flutter e Dart com Gerenciamento de Estado MobX e Gerenciamento de Dependência Modular, com arquitetura MVC, desenvolvimento de Api Rest com Dart e Shelf. \nConhecimento em MySQL, Python e Java. Autodidata em Figma, Photoshop, Adobe Premiere e Sony Vegas.';
const String evolutionCarrer =
    'Prefeitura Municipal de Itapetininga - Setor TI 01/2022 - Estagio Atual - Atividades desenvolvidas: Levantamento de requisitos Funcionais e Não Funcionais, modelagem conceitual, relacional e logico para Banco de Dados, criações de modelo físico do mesmo. Desenvolvimento de aplicações em Flutter e Dart, com arquitetura MVC e de Api Rest com Dart e Shelf.\n\nEstou auxiliando no desenvolvimento de um projeto VB.NET com o objetivo de facilitar e gerenciar relatórios, além de cadastrar equipaentos, funcionários e suas respectivas permissões. As funcionalidades de busca de equipamentos e geração de relatórios também estão sendo implementadas no projeto.\n\nICOCITAL Artefatos de concreto LTDA - 01/2022 - Ajudante geral - Atividades desenvolvidas: Operador de máquina empilhadeira, manutenção de câmeras, portões eletrôncos, alarme e cerca elétrica.';
const String coursesAndLecture =
    'Menção Honrosa de Melhor Resumo Simples do Curso Analise e Desenvolvimentos de Sistemas, pela apresentação do Projeto 4Class - 2022\n\nPrevenção e Combate a Incêndios e Primeiros Socorros (4 horas - 2018) - Segurança e Saúde Itapetininga - SP';

const String urlGit = 'https://github.com/ygorfelipe';
const String urlLinkdin = 'https://www.linkedin.com/in/ygor-felipe-a74a98169/';
const String urlEmail = 'ygor.silva2@fatec.sp.gov.br';
const String urlAssetGit = 'assets/icons/github.png';
const String urlAssetLinkdin = 'assets/icons/linkedin.png';
const String urlAssetEmail = 'assets/icons/e-mail.png';
