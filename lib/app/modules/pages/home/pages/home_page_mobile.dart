import 'package:eohdarksystem/app/core/ui/helpers/size_extensions.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_background.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_button.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_circle_icon_button.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackGround(opacity: 0.20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    label: welcome,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: context.percentHeight(0.03)),
                  const CustomText(label: description, fontSize: 16.0),
                  SizedBox(height: context.percentHeight(0.05)),
                  Center(
                    child: CustomButton(
                      label: 'CLIQUE AQUI, PARA VER MAIS',
                      fontSize: 12.0,
                      onPressed: () => Modular.to.pushNamed('/projects'),
                      color: Colors.black,
                      height: context.percentHeight(.04),
                      width: context.percentWidth(.55),
                    ),
                  ),
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
                        iconSize: 50.0,
                      ),
                      const SizedBox(width: 16.0),
                      CustomCircleIconButton(
                        onPressed: () => launchUrl(Uri.parse(urlLinkdin)),
                        assetImage: urlAssetLinkdin,
                        radius: 20.0,
                        iconSize: 50.0,
                      ),
                      const SizedBox(width: 16.0),
                      CustomCircleIconButton(
                        onPressed: () => launchUrl(
                          Uri(scheme: 'mailto', path: urlEmail),
                        ),
                        assetImage: urlAssetEmail,
                        radius: 20.0,
                        iconSize: 50.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String welcome = 'Olá, seja bem-vindo!';
const String description =
    'Me chamo Ygor Felipe, tenho 25 anos e atualmente estudo Análise e Desenvolvimento de Sistemas na Fatec Itapetininga.\nEste espaço foi criado com o propósito de apresentar alguns dos projetos que desenvolvi utilizando as linguagens Flutter & Dart, bem como VB.NET.\nInclusive, o portifólio foi desenvolvido em Flutter Web, demonstrando a versatilidade da linguagem. Espero que gostem dos projetos apresentados e fique à vontade para entrar em contato.';
const String urlGit = 'https://github.com/ygorfelipe';
const String urlLinkdin = 'https://www.linkedin.com/in/ygor-felipe-a74a98169/';
const String urlEmail = 'ygor.silva2@fatec.sp.gov.br';
const String urlAssetGit = 'assets/icons/github.png';
const String urlAssetLinkdin = 'assets/icons/linkedin.png';
const String urlAssetEmail = 'assets/icons/e-mail.png';
