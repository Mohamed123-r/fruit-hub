import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/sign_in_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruit_hub/features/onboarding/presentation/views/onboarding_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingView());

    case LogInView.routeName:
      return MaterialPageRoute(builder: (_) => const LogInView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpView());

    default:
      return MaterialPageRoute(builder: (_) => Container());
  }
}
