// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eohdarksystem/app/models/projects_model.dart';
import 'package:mobx/mobx.dart';

import 'package:eohdarksystem/app/services/i_project_services.dart';

part 'projects_store.g.dart';

class ProjectsStore = ProjectsStoreBase with _$ProjectsStore;

abstract class ProjectsStoreBase with Store {
  final IProjectServices _services;
  ProjectsStoreBase({
    required IProjectServices services,
  }) : _services = services;

  @observable
  ObservableFuture<List<ProjectsModel>>? futureProject;

  @observable
  bool isLoading = false;

  @action
  Future<void> initPage() async {
    await findAll();
  }

  @action
  Future<void> findAll() async {
    futureProject = ObservableFuture(_services.findAll());
  }
}
