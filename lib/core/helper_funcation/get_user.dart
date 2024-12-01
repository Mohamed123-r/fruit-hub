import 'dart:convert';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

import '../database/cache_helper.dart';
import '../utils/endpoints.dart';

UserEntity getUser() {
  var jsonData =
      CacheHelper.sharedPreferences.getString(EndPoints.kSaveUserData);
  var user = UserModel.fromjson(jsonDecode(jsonData!));
  return user;
}
