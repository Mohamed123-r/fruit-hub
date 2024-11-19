import 'package:bloc/bloc.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/user_entity.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword({
    context,
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      context: context,
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(SignInFailure(
        message: failure.message,
      )),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }
}
