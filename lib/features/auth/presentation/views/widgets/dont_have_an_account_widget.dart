import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

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
          S.of(context).no_account,
          style: TextStyles.bodyBasaRegular.copyWith(
            color: AppColors.grayscale400Color,
          ),
        ),
        Text(
          S.of(context).create_account,
          style: TextStyles.bodyBasaRegular
              .copyWith(color: AppColors.greenColor),
        ),
      ],
    );
  }
}
