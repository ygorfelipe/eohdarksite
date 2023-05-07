// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eohdarksystem/app/models/projects_model.dart';
import 'package:eohdarksystem/app/repositories/i_projects_repository.dart';

import './i_project_services.dart';

class ImplProjectServices implements IProjectServices {
  final IProjectsRepository _repository;
  ImplProjectServices({
    required IProjectsRepository repository,
  }) : _repository = repository;

  // @override
  // Future<List<ProjectsModel>> findAll() => _repository.findAll();

  @override
  Future<List<ProjectsModel>> findAll() => _repository.findAll();

  @override
  Future<dynamic> findById(int id) => _repository.findById(id);
}
