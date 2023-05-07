// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:eohdarksystem/app/models/test/photos_test_model.dart';

class MidiaTestModel {
  final int? midiaId;
  final String? background;
  final List<PhotosTestModel>? photos;
  MidiaTestModel({
    this.midiaId,
    this.background,
    this.photos,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'midiaId': midiaId,
      'background': background,
      'photos': photos?.map((x) => x.toMap()).toList(),
    };
  }

  factory MidiaTestModel.fromMap(Map<String, dynamic> map) {
    return MidiaTestModel(
      midiaId: map['midiaId'] != null ? map['midiaId'] as int : null,
      background: map['background'] != null ? map['background'] as String : null,
      photos: map['photos'] != null ? List<PhotosTestModel>.from((map['photos'] as List).map<PhotosTestModel?>((x) => PhotosTestModel.fromMap(x as Map<String,dynamic>),),) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MidiaTestModel.fromJson(String source) => MidiaTestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MidiaTestModel(midiaId: $midiaId, background: $background, photos: $photos)';
  }

