import 'package:bloc/bloc.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
     {context,
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SignUpLoading());
    final result = await authRepo.createUserWithEmailAndPassword(
      context: context,
      email: email,
      password: password,
      name: name,
    );
    result.fold(
      (failure) => emit(SignUpFailure(
        massage: failure.message, // emit error
      )),
      (userEntity) => emit(SignUpSuccess(
        userEntity: userEntity,
      )),
    );
  }
}
