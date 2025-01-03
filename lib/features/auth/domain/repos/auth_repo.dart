import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/error/failures.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {context,
      required String email,
      required String password,
      required String name});

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      {context, required String email, required String password});

  Future<Either<Failure, UserEntity>> signInWithGoogle({context});

  Future addUserData({required UserEntity user});

  Future<UserEntity> getUserData({required String userId});

  Future<Either<Failure, UserEntity>> signInWithFacebook({context});

  Future saveUserData({required UserEntity user});
}
