import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/best%20seling/presentation/views/best_seling_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
        Text(
          S.of(context).best_selling_text,
          style: TextStyles.bodyBasaBold,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, BestSellingView.routeName);
          },
          child: Text(
            S.of(context).view_all_text,
            style: TextStyles.bodySmallRegular.copyWith(
              color: AppColors.grayscale400Color,
            ),
          ),
        ),
      ],
    );
  }
}
