import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'أو',
            style: TextStyles.bodyBasaRegular
                .copyWith(color: AppColors.grayscale400Color),
          ),
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
