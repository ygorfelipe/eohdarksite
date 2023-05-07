// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:eohdarksystem/app/models/projects_model.dart';

class MapProjectModel {
  final ProjectsModel? projectsModel;
  MapProjectModel({
    this.projectsModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectsModel': projectsModel?.toMap(),
    };
  }

  factory MapProjectModel.fromMap(Map<String, dynamic> map) {
    return MapProjectModel(
      projectsModel: map['projectsModel'] != null
          ? ProjectsModel.fromMap(map['projectsModel'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MapProjectModel.fromJson(String source) =>
      MapProjectModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MapProjectModel(projectsModel: $projectsModel)';
}
