import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/error/exception.dart';
import 'package:fruit_hub/generated/l10n.dart';

class FirebaseAuthService {
  Future<User> createEmailAndPassword({
    context,
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      logger.e(
          "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");

      if (e.code == 'weak-password') {
        throw CustomException(message: S.of(context).weak_password);
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: S.of(context).account_exists);
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: S.of(context).no_internet);
      } else {
        throw CustomException(message: S.of(context).error_occurred);
      }
    } catch (e) {
      logger.e(
          "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");

      throw CustomException(message: S.of(context).error_occurred);
    }
  }

  Future<User> signInWithEmailAndPassword({
    context,
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      logger.e(
          "Exception in  firebaseAuthService.signInWithEmailAndPassword :$e");

      if (e.code == 'user-not-found') {
        throw CustomException(message: S.of(context).user_not_found);
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: S.of(context).wrong_password);
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: S.of(context).no_internet);
      } else {
        throw CustomException(message: S.of(context).error_occurred);
      }
    } catch (e) {
      logger.e(
          "Exception in  firebaseAuthService.signInWithEmailAndPassword :$e");

      throw CustomException(message: S.of(context).error_occurred);
    }
  }
}
