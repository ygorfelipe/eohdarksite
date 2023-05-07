import 'package:eohdarksystem/app/repositories/i_projects_repository.dart';
import 'package:eohdarksystem/app/repositories/impl_project_repository.dart';
import 'package:eohdarksystem/app/services/i_project_services.dart';
import 'package:eohdarksystem/app/services/impl_project_services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory<IProjectsRepository>(
      (i) => ImplProjectImplRepository(),
      export: true,
    ),
    Bind.factory<IProjectServices>(
      (i) => ImplProjectServices(repository: i()),
      export: true,
    ),
  ];
}
