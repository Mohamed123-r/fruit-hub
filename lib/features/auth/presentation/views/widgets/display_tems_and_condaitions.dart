import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

import 'custom_check_box.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  TermsAndConditionsWidgetState createState() =>
      TermsAndConditionsWidgetState();
}

class TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckBox(
          isChecked: isChecked,
          onChecked: (value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              Text(
                'من خلال إنشاء حساب، فإنك توافق على ',
                style: TextStyles.bodySmallRegular.copyWith(
                  color: AppColors.grayscale400Color,
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle terms tap
                },
                child: Text(
                  'الشروط',
                  style: TextStyles.bodySmallBold.copyWith(
                    color: AppColors.green600Color,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle terms tap
                },
                child: Text(
                  ' والأحكام',
                  style: TextStyles.bodySmallBold.copyWith(
                    color: AppColors.green600Color,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle terms tap
                },
                child: Text(
                  ' الخاصة بنا',
                  style: TextStyles.bodySmallBold.copyWith(
                    color: AppColors.green600Color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
