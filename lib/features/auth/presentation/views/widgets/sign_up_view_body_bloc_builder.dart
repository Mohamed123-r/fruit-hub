import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper_funcation/custom_error.dart';
import 'package:fruit_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruit_hub/features/auth/presentation/manage/sign_up_cubit/sign_up_cubit.dart';
import 'sign_up_view_body.dart';

class SignUpViewBodyBlocBuilder extends StatelessWidget {
  const SignUpViewBodyBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          //  Navigator.pop(context);
        }
        if (state is SignUpFailure) {
          customError(
            context,
            massage: state.massage,
          );
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          inAsyncCall: state is SignUpLoading ? true : false,
          child: const SignUpViewBody(),
        );
      },
    );
  }
}
