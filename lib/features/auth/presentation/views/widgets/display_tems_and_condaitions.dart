import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

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
                S.of(context).privacy_policy,
                style: TextStyles.bodySmallRegular.copyWith(
                  color: AppColors.grayscale400Color,
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle terms tap
                },
                child: Text(
                  S.of(context).terms,
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
                  S.of(context).conditions,
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
                  S.of(context).with_conditions,
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
