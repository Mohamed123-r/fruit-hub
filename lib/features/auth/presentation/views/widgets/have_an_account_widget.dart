import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "تمتلك حساب بالفعل؟ ",
          style: TextStyles.bodyBasaRegular.copyWith(
            color: AppColors.grayscale400Color,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            " تسجيل دخول",
            style: TextStyles.bodyBasaRegular
                .copyWith(color: AppColors.greenColor),
          ),
        ),
      ],
    );
  }
}
