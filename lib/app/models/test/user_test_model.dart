import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserTestModel {
  final int? userId;
  final String? name;
  final String? avatarUrl;
  UserTestModel({
    this.userId,
    this.name,
    this.avatarUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'name': name,
      'avatarUrl': avatarUrl,
    };
  }

  factory UserTestModel.fromMap(Map<String, dynamic> map) {
   
    return UserTestModel(
      userId: map['userId'] != null ? map['userId'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      avatarUrl: map['avatarUrl'] != null ? map['avatarUrl'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserTestModel.fromJson(String source) =>
      UserTestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'UserTestModel(userId: $userId, name: $name, avatarUrl: $avatarUrl)';
}
