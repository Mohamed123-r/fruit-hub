import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

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
          S.of(context).have_account,
          style: TextStyles.bodyBasaRegular.copyWith(
            color: AppColors.grayscale400Color,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            S.of(context).log_in_text,
            style: TextStyles.bodyBasaRegular
                .copyWith(color: AppColors.greenColor),
          ),
        ),
      ],
    );
  }
}
