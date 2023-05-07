import 'package:eohdarksystem/app/modules/pages/about/about_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialAboutModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => const AboutPage()),
      ];
}
