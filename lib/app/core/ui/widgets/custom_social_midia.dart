
import 'package:eohdarksystem/app/core/ui/helpers/responsive.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomSocialMidia extends StatelessWidget {
  const CustomSocialMidia({Key? key}) : super(key: key);

  Future<void> _launchLink(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      // print('Não pode executar o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomCircleIconButton(
          onPressed: () => _launchLink('https://github.com/ygorfelipe'),
          assetImage: 'assets/icons/github.png',
          radius: (Responsive.isMobile(context) ? 20.0 : 25),
          iconSize: 50,
        ),
        const SizedBox(width: 16),
        CustomCircleIconButton(
          onPressed: () =>
              _launchLink('https://www.linkedin.com/in/ygor-felipe-a74a98169/'),
          assetImage: 'assets/icons/linkedin.png',
          radius: (Responsive.isMobile(context) ? 20.0 : 25),
          iconSize: 50,
        ),
        const SizedBox(width: 16),
        // CustomCircleIconButton(
        //   // ygor.silva2@fatec.sp.gov.br
        //   onPressed: () => _launchLink('mailto:ygor.silva2@fatec.sp.gov.br'),
        //   assetImage: 'assets/icons/e-mail.png',
        //   radius: 25.0,
        //   iconSize: 50,
        // ),
      ],
    );
  }
}
