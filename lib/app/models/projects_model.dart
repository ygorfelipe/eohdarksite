// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:eohdarksystem/app/models/media_model.dart';
import 'package:eohdarksystem/app/models/user_model.dart';

class ProjectsModel {
  final int? id;
  final String? projectName;
  final String? description;
  final MediaModel? midia;
  final UserModel? user;
  ProjectsModel({
    this.id,
    this.projectName,
    this.description,
    this.midia,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'projectName': projectName,
      'description': description,
      'midia': midia?.toMap(),
      'user': user?.toMap(),
    };
  }

  factory ProjectsModel.fromMap(Map<String, dynamic> map) {
    return ProjectsModel(
      id: map['id'] != null ? map['id'] as int : null,
      projectName:
          map['projectName'] != null ? map['projectName'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      midia: map['midia'] != null
          ? MediaModel.fromMap(map['midia'] as Map<String, dynamic>)
          : null,
      user: map['user'] != null
          ? UserModel.fromMap(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectsModel.fromJson(String source) =>
      ProjectsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProjectsModel(id: $id, projectName: $projectName, description: $description, midia: $midia, user: $user)';
  }
}
