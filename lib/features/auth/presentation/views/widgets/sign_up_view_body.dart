import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'display_tems_and_condaitions.dart';
import 'have_an_account_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
             CustomTextField(
              hintText: S.of(context).name,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: S.of(context).email,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: S.of(context).password,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: const Icon(
                Icons.remove_red_eye,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TermsAndConditionsWidget(),
            const SizedBox(
              height: 32,
            ),
            CustomButton(title:   S.of(context).create_new_account, onPressed: () {}),
            const SizedBox(
              height: 24,
            ),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
