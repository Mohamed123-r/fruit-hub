import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/database/cache_helper.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/views/log_in_view.dart';
import 'package:fruit_hub/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnboardingPageView(
            controller: _pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.greenColor,
            color: _currentPage == 1
                ? AppColors.greenColor
                : AppColors.greenColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        _currentPage == 0
            ? const SizedBox(
                height: 54,
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomButton(
                  title: 'ابدأ الان',
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(LogInView.routeName);
                    CacheHelper().saveData(key: isOnboardingViewSeen, value: true);
                  },
                ),
              ),
        const SizedBox(
          height: 42,
        ),
      ],
    );
  }
}
