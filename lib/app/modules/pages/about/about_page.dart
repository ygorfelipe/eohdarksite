import 'package:eohdarksystem/app/core/ui/helpers/responsive.dart';
import 'package:eohdarksystem/app/modules/pages/about/pages/about_page_desktop.dart';
import 'package:eohdarksystem/app/modules/pages/about/pages/about_page_mobile.dart';
import 'package:eohdarksystem/app/modules/pages/about/pages/about_page_tablet.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: AboutPageMobile(),
        tablet: AboutPageTablet(),
        desktop: AboutPageDesktop(),
      ),
    );
  }
}
