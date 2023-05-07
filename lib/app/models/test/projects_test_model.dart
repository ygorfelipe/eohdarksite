// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:eohdarksystem/app/models/test/midia_test_model.dart';
import 'package:eohdarksystem/app/models/test/user_test_model.dart';

class ProjectsTestModel {
  final int? id;
  final String? projectName;
  final String? description;
  final MidiaTestModel? midia;
  final UserTestModel? user;
  ProjectsTestModel({
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

  factory ProjectsTestModel.fromMap(Map<String, dynamic> map) {
    return ProjectsTestModel(
      id: map['id'] != null ? map['id'] as int : null,
      projectName: map['projectName'] != null ? map['projectName'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      midia: map['midia'] != null ? MidiaTestModel.fromMap(map['midia'] as Map<String,dynamic>) : null,
      user: map['user'] != null ? UserTestModel.fromMap(map['user'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectsTestModel.fromJson(String source) => ProjectsTestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProjectsTestModel(id: $id, projectName: $projectName, description: $description, midia: $midia, user: $user)';
  }
}

