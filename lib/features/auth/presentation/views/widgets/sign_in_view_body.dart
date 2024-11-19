import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_password.dart';
import 'package:fruit_hub/core/widgets/custom_text_field.dart';
import 'package:fruit_hub/features/auth/presentation/manage/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub/generated/assets.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'social_login_button.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, password;

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
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: S.of(context).email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              CustomPassword(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    S.of(context).forgot_password,
                    style: TextStyles.bodySmallBold
                        .copyWith(color: AppColors.green600Color),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              CustomButton(
                  title: S.of(context).log_in_text,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      context.read<SignInCubit>().signInWithEmailAndPassword(
                            context: context,
                            email: email,
                            password: password,
                          );
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });

                    }
                  }),
              SizedBox(
                height: 32,
              ),
              DontHaveAnAccountWidget(),
              SizedBox(
                height: 32,
              ),
              OrDivider(),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: S.of(context).log_in_with_google,
                icon: SvgPicture.asset(
                  Assets.imagesGoogleIcon,
                  fit: BoxFit.scaleDown,
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: S.of(context).log_in_with_apple,
                icon: SvgPicture.asset(
                  Assets.imagesAppleIcon,
                  fit: BoxFit.scaleDown,
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 16,
              ),
              SocialLoginButton(
                title: S.of(context).log_in_with_facebook,
                icon: SvgPicture.asset(
                  Assets.imagesFacebookIcon,
                  fit: BoxFit.scaleDown,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
