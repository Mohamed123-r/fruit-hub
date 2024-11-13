import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب؟ ',
          style: TextStyles.bodyBasaRegular.copyWith(
            color: AppColors.grayscale400Color,
          ),
        ),
        Text(
          'قم بإنشاء حساب',
          style: TextStyles.bodyBasaRegular
              .copyWith(color: AppColors.greenColor),
        ),
      ],
    );
  }
}
