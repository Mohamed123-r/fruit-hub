import 'package:flutter/material.dart';
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
              ),
              const Text(
                'Fruit',
              ),
              const Text(
                '  HUB',
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
            style: const TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        )
      ],
    );
  }
}
