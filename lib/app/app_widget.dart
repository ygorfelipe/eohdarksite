import 'package:eohdarksystem/app/core/ui/theme/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');

    return ScreenUtilInit(
      builder: (_, __) => MaterialApp.router(
        title: 'eohdarksystem',
        debugShowCheckedModeBanner: false,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        theme: ThemeConfig.theme,
      ),
    );
  }
}
