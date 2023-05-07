import 'package:eohdarksystem/app/modules/pages/projects/project_page/projects_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'projects_page.dart';

class ProjectsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProjectsStore(services: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const ProjectsPage()),
  ];
}
