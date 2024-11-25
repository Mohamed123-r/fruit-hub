import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/error/exception.dart';
import 'package:fruit_hub/core/error/failures.dart';
import 'package:fruit_hub/core/services/fire_store_service.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/core/utils/endpoints.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  FirebaseAuthService firebaseAuthService;
  FireStoreService fireStoreService;

  AuthRepoImpl(this.firebaseAuthService, this.fireStoreService);

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {context,
      required String email,
      required String password,
      required String name}) async {
    User? user;
    try {
      user = await firebaseAuthService.createEmailAndPassword(
        context: context,
        emailAddress: email,
        password: password,
      );
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return Left(
        ServerFailure(e.message),
      );
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      logger.e("Exception in  createUserWithEmailAndPassword :$e");
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      {context, required String email, required String password}) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        context: context,
        emailAddress: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(
        ServerFailure(e.message),
      );
    } catch (e) {
      logger.e("Exception in  signInWithEmailAndPassword :$e");
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle({context}) async {
    try {
      var user = await firebaseAuthService.signInWithGoogle(context);
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      logger.e("Exception in  signInWithGoogle :$e");
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook({context}) async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      logger.e("Exception in  signInWithFacebook :$e");
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await fireStoreService.addData(
        path: EndPoints.userCollectionPath, data: user.toMap());
  }
}
