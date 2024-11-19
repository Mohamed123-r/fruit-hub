import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/database/cache_helper.dart';
import 'package:fruit_hub/core/helper_funcation/is_arabic.dart';
import 'package:fruit_hub/features/auth/presentation/views/sign_in_view.dart';
import 'package:fruit_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruit_hub/generated/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  initState() {
    executeNavigation();
    super.initState();
  }

  void executeNavigation() {
    bool isLogin = CacheHelper().getData(key: isOnboardingViewSeen) ?? false;
    Future.delayed(const Duration(seconds: 3), () {
      isLogin
          ? Navigator.pushReplacementNamed(context, LogInView.routeName)
          : Navigator.pushReplacementNamed(context, OnboardingView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment:
              isArabic() ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesCircles),
      ],
    );
  }
}
