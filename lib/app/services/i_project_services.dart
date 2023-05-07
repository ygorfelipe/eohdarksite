import 'package:eohdarksystem/app/models/projects_model.dart';

abstract class IProjectServices {
  // Future<List<ProjectsModel>> findAll();
  Future<List<ProjectsModel>> findAll();
  Future<dynamic> findById(int id);
}
