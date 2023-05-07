import 'package:eohdarksystem/app/models/projects_model.dart';

abstract class IProjectsRepository {
  Future<List<ProjectsModel>> findAll();
  Future<dynamic> findById(int id);
}
