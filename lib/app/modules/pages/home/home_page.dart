import 'package:eohdarksystem/app/core/ui/helpers/responsive.dart';
import 'package:eohdarksystem/app/modules/pages/home/pages/home_page_desktop.dart';
import 'package:eohdarksystem/app/modules/pages/home/pages/home_page_mobile.dart';
import 'package:eohdarksystem/app/modules/pages/home/pages/home_page_tablet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: HomePageMobile(),
        tablet: HomePageTablet(),
        desktop: HomePageDesktop(),
      ),
    );
  }
}
