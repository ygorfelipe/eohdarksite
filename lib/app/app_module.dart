import 'package:eohdarksystem/app/modules/core/core_module.dart';
import 'package:eohdarksystem/app/modules/pages/about/initial_about_module.dart';
import 'package:eohdarksystem/app/modules/pages/home/initial_home_module.dart';
import 'package:eohdarksystem/app/modules/pages/projects/initial_project_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  
  @override
  final List<Bind> binds = [];

  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home/', module: InitialHomeModule()),
    ModuleRoute('/projects/', module: InitialProjectModule()),
    ModuleRoute('/about/', module: InitialAboutModule()),
  ];
}
