import 'package:eohdarksystem/app/modules/pages/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialHomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage())];
}
