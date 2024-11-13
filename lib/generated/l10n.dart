// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to`
  String get onboarding1_title {
    return Intl.message(
      'Welcome to',
      name: 'onboarding1_title',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and enjoy the best offers and high quality.`
  String get onboarding1_subtext {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and enjoy the best offers and high quality.',
      name: 'onboarding1_subtext',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get onboarding2_title {
    return Intl.message(
      'Search and Shop',
      name: 'onboarding2_title',
      desc: '',
      args: [],
    );
  }

  /// `We bring you the finest carefully selected fruits. View details, photos, and reviews to ensure you pick the perfect fruit.`
  String get onboarding2_subtext {
    return Intl.message(
      'We bring you the finest carefully selected fruits. View details, photos, and reviews to ensure you pick the perfect fruit.',
      name: 'onboarding2_subtext',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onboarding_skip {
    return Intl.message(
      'Skip',
      name: 'onboarding_skip',
      desc: '',
      args: [],
    );
  }

  /// `Start now`
  String get get_started {
    return Intl.message(
      'Start now',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in_text {
    return Intl.message(
      'Log in',
      name: 'log_in_text',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get no_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get create_account {
    return Intl.message(
      'Create an account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or_text {
    return Intl.message(
      'Or',
      name: 'or_text',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Google`
  String get log_in_with_google {
    return Intl.message(
      'Log in with Google',
      name: 'log_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Facebook`
  String get log_in_with_facebook {
    return Intl.message(
      'Log in with Facebook',
      name: 'log_in_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Apple`
  String get log_in_with_apple {
    return Intl.message(
      'Log in with Apple',
      name: 'log_in_with_apple',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
