import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/log_in_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  static const routeName = '/log-in-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: S.of(context).log_in_text,
      ),
      body: const LogInViewBody(),
    );
  }


}
