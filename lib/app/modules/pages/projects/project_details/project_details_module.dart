import 'package:eohdarksystem/app/modules/pages/projects/project_details/project_details_page.dart';
import 'package:eohdarksystem/app/modules/pages/projects/project_details/project_details_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProjectDetailsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProjectDetailsStore(services: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/:projectId',
        child: (_, args) => ProjectDetailsPage(
              projectId: int.parse(args.params['projectId']),
            )),
  ];
}
