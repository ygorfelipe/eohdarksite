import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PhotosTestModel {
  final int? photoId;
  final String? photoUrl;
  PhotosTestModel({
    this.photoId,
    this.photoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'photoId': photoId,
      'photoUrl': photoUrl,
    };
  }

  factory PhotosTestModel.fromMap(Map<String, dynamic> map) {
    return PhotosTestModel(
      photoId: map['photoId'] != null ? map['photoId'] as int : null,
      photoUrl: map['photoUrl'] != null ? map['photoUrl'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PhotosTestModel.fromJson(String source) => PhotosTestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PhotosTestModel(photoId: $photoId, photoUrl: $photoUrl)';
}
