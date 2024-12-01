import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.uId,
    required super.email,
    required super.name,
  });

  factory UserModel.fromFirebaseUser(User user) => UserModel(
        uId: user.uid,
        email: user.email ?? "",
        name: user.displayName ?? "",
      );

  factory UserModel.fromjson(Map<String, dynamic> json) => UserModel(
        uId: json["uId"],
        email: json["email"],
        name: json["name"],
      );

  toMap() => {'email': email, 'name': name, 'uId': uId};

  factory UserModel.fromEntity(UserEntity user) =>
      UserModel(uId: user.uId, email: user.email, name: user.name);
}
