import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper_funcation/get_it.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar_auth.dart';
import 'package:fruit_hub/generated/l10n.dart';
import '../../domain/repos/auth_repo.dart';
import '../manage/sign_in_cubit/sign_in_cubit.dart';
import 'widgets/sign_in_view_body_bloc_consumer.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  static const routeName = '/log-in-view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBarAuth(
          context,
          title: S.of(context).log_in_text,
        ),
        body: SignInViewBodyBlocConsumer(),
      ),
    );
  }
}
