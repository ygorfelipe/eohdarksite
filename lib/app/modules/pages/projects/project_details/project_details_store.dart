// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eohdarksystem/app/models/projects_model.dart';
import 'package:mobx/mobx.dart';

import 'package:eohdarksystem/app/services/i_project_services.dart';

part 'project_details_store.g.dart';

class ProjectDetailsStore = ProjectDetailsStoreBase with _$ProjectDetailsStore;

abstract class ProjectDetailsStoreBase with Store {
  final IProjectServices _services;
  ProjectDetailsStoreBase({
    required IProjectServices services,
  }) : _services = services;

  @observable
  ProjectsModel? projectsModel;

  @observable
  ObservableFuture<List<ProjectsModel>>? futureProject;

  @observable
  bool isLoading = false;

  @action
  Future<void> initPage(id) async {
    isLoading = true;
    await findAllId(id);
    isLoading = false;
  }

  @action
  Future<dynamic> findAllId(id) async {
    return await _services.findById(id);
  }
}
