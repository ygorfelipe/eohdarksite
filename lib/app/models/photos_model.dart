// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PhotosModel {
  final int? photoId;
  final String? photoUrl;
  PhotosModel({
    this.photoId,
    this.photoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photoId': photoId,
      'photoUrl': photoUrl,
    };
  }

  factory PhotosModel.fromMap(Map<String, dynamic> map) {
    return PhotosModel(
      photoId: map['photoId'] != null ? map['photoId'] as int : null,
      photoUrl: map['photoUrl'] != null ? map['photoUrl'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PhotosModel.fromJson(String source) =>
      PhotosModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PhotosModel(photoId: $photoId, photoUrl: $photoUrl)';
}
