import 'dart:convert';

class UserModel {
  final int? userId;
  final String? name;
  final String? avatarUrl;
  UserModel({
    this.userId,
    this.name,
    this.avatarUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'name': name,
      'avatarUrl': avatarUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['user_id'] != null ? map['user_id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      avatarUrl: map['avatar_url'] != null ? map['avatar_url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'UserModel(user_id: $userId, name: $name, avatar_url: $avatarUrl)';
}
