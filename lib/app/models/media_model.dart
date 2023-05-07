// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:eohdarksystem/app/models/photos_model.dart';

class MediaModel {
  final int? midiaId;
  final String? background;
  final List<PhotosModel>? photos;
  MediaModel({
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

  factory MediaModel.fromMap(Map<String, dynamic> map) {
    return MediaModel(
      midiaId: map['midiaId'] != null ? map['midiaId'] as int : null,
      background:
          map['background'] != null ? map['background'] as String : null,
      photos: map['photos'] != null
          ? List<PhotosModel>.from(
              (map['photos'] as List).map<PhotosModel?>(
                (x) => PhotosModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MediaModel.fromJson(String source) =>
      MediaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'MediaModel(midiaId: $midiaId, background: $background, photos: $photos)';
}
