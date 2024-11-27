import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/database/cache_helper.dart';
import 'package:fruit_hub/core/helper_funcation/custom_error.dart';
import 'package:fruit_hub/core/widgets/custom_progress_hud.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';
import '../../manage/sign_in_cubit/sign_in_cubit.dart';
import 'sign_in_view_body.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(HomeView.routeName, (route) => false);

          CacheHelper().saveData(key: isSuccessLogin, value: true);
        }
        if (state is SignInFailure) {
          customError(
            context,
            massage: state.message,
          );
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          inAsyncCall: state is SignInLoading ? true : false,
          child: SignInViewBody(),
        );
      },
    );
  }
}
