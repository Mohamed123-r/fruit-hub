import 'package:dartz/dartz.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/error/exception.dart';
import 'package:fruit_hub/core/error/failures.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  FirebaseAuthService firebaseAuthService;

  AuthRepoImpl(this.firebaseAuthService);

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {context,
      required String email,
      required String password,
      required String name}) async {
    try {
      var user = await firebaseAuthService.createEmailAndPassword(
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
}
