import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class ButtonOverItem extends StatelessWidget {
  const ButtonOverItem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Text('تسوق الان',
            style: TextStyles.bodySmallBold.copyWith(
                color: AppColors.greenColor
            )),
      ),
    );
  }
}
