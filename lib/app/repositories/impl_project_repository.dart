import 'dart:convert';
import 'package:eohdarksystem/app/models/projects_model.dart';
import 'package:eohdarksystem/app/repositories/data/projects_json.dart';
import 'package:eohdarksystem/app/repositories/i_projects_repository.dart';

class ImplProjectImplRepository implements IProjectsRepository {
  final ProjectsJson _projectsJson = ProjectsJson();

  @override
  Future<List<ProjectsModel>> findAll() async {
    final resultParser = json.decode(_projectsJson.jsonData);
    final resultData =
        (resultParser as List).map((r) => ProjectsModel.fromMap(r)).toList();
    return resultData;
  }

  @override
  Future<dynamic> findById(int id) async {
    final resultParser = json.decode(_projectsJson.jsonData);
    final result = (resultParser as List).where((i) => i['id'] == id).first;
    return result;
  }
}
