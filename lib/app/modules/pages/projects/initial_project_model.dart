import 'package:eohdarksystem/app/modules/pages/projects/project_details/project_details_module.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_page/projects_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitialProjectModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: ProjectsModule()),
        ModuleRoute('/project_details/', module: ProjectDetailsModule()),
      ];
}
