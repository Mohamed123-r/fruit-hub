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

  /// `Log In`
  String get log_in_text {
    return Intl.message(
      'Log In',
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

  /// `Don't have an account? `
  String get no_account {
    return Intl.message(
      'Don\'t have an account? ',
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

  /// `New Account`
  String get sign_up {
    return Intl.message(
      'New Account',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get name {
    return Intl.message(
      'Full Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Our `
  String get terms {
    return Intl.message(
      'Our ',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Terms `
  String get conditions {
    return Intl.message(
      'Terms ',
      name: 'conditions',
      desc: '',
      args: [],
    );
  }

  /// `and Conditions `
  String get with_conditions {
    return Intl.message(
      'and Conditions ',
      name: 'with_conditions',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to `
  String get privacy_policy {
    return Intl.message(
      'By creating an account, you agree to ',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get create_new_account {
    return Intl.message(
      'Create New Account',
      name: 'create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `Have an account? `
  String get have_account {
    return Intl.message(
      'Have an account? ',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Please accept terms and conditions`
  String get accept_terms {
    return Intl.message(
      'Please accept terms and conditions',
      name: 'accept_terms',
      desc: '',
      args: [],
    );
  }

  /// `Oh no! An error occurred. Please try again.`
  String get error_occurred {
    return Intl.message(
      'Oh no! An error occurred. Please try again.',
      name: 'error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection.`
  String get no_internet {
    return Intl.message(
      'No internet connection.',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get account_exists {
    return Intl.message(
      'The account already exists for that email.',
      name: 'account_exists',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weak_password {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get generic_error {
    return Intl.message(
      'Error',
      name: 'generic_error',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `No user found for that email.`
  String get user_not_found {
    return Intl.message(
      'No user found for that email.',
      name: 'user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password provided for that user.`
  String get wrong_password {
    return Intl.message(
      'Wrong password provided for that user.',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `The account has been created successfully, please log in.`
  String get welcome_to_sign_in {
    return Intl.message(
      'The account has been created successfully, please log in.',
      name: 'welcome_to_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Good morning !..`
  String get good_morning {
    return Intl.message(
      'Good morning !..',
      name: 'good_morning',
      desc: '',
      args: [],
    );
  }

  /// `Search for.....`
  String get search_here {
    return Intl.message(
      'Search for.....',
      name: 'search_here',
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
