import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper_funcation/get_it.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../manage/sign_up_cubit/sign_up_cubit.dart';
import 'widgets/sign_up_view_body.dart';
import 'widgets/sign_up_view_body_bloc_builder.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = 'signUpView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: S.of(context).sign_up,
        ),
        body: const SignUpViewBodyBlocBuilder(),
      ),
    );
  }
}


