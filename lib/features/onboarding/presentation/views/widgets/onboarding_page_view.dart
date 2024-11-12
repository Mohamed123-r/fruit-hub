import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper_funcation/is_arabic.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/assets.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle: S.of(context).onboarding1_subtext,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).onboarding1_title,
                style: TextStyles.heading5Bold,
              ),
              isArabic()
                  ? Row(
                      children: [
                        Text(
                          ' HUB',
                          style: TextStyles.heading5Bold.copyWith(
                            color: AppColors.orangeColor,
                          ),
                        ),
                        Text(
                          'Fruit',
                          style: TextStyles.heading5Bold.copyWith(
                            color: AppColors.greenColor,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Text(
                          ' Fruit',
                          style: TextStyles.heading5Bold.copyWith(
                            color: AppColors.greenColor,
                          ),
                        ),
                        Text(
                          'HUB',
                          style: TextStyles.heading5Bold.copyWith(
                            color: AppColors.orangeColor,
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle: S.of(context).onboarding2_subtext,
          title: Text(
            S.of(context).onboarding2_title,
            textAlign: TextAlign.center,
            style: TextStyles.heading5Bold
          ),
        )
      ],
    );
  }
}
