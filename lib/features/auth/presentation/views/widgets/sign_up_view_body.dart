import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';
import 'package:fruit_hub/features/auth/presentation/manage/sign_up_cubit/sign_up_cubit.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'display_tems_and_condaitions.dart';
import 'have_an_account_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, password, name;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              CustomTextField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: S.of(context).name,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: S.of(context).email,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value) {
                  password = value!;
                },
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
              CustomButton(
                title: S.of(context).create_new_account,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    BlocProvider.of<SignUpCubit>(context)
                        .createUserWithEmailAndPassword(
                      name: name,
                      email: email,
                      password: password,
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 24,
              ),
              const HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
