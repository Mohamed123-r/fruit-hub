import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/error/exception.dart';

class FirebaseAuthService {
  Future<User> createEmailAndPassword(
      {required String emailAddress, required String password}) async {
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
        logger.e(
            "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'The account already exists for that email.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'No internet connection.');
      } else {
        throw CustomException(
            message: 'Oh no! An error occurred. Please try again.');
      }
    } catch (e) {
      logger.e(
          "Exception in  firebaseAuthService.createUserWithEmailAndPassword :$e");

      throw CustomException(
          message: 'Oh no! An error occurred. Please try again.');
    }
  }
}
