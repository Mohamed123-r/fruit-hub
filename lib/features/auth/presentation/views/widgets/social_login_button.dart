import 'package:flutter/material.dart';

import 'package:fruit_hub/core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.icon});

  final String title;
  final VoidCallback onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Color(0xffDDDFDF)),
      ),
      minWidth: double.infinity,
      height: 56,
      onPressed: onPressed,
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        leading: icon,
        title: Text(
          title,
          style: TextStyles.bodyBasaRegular,
        ),
      ),
    );
  }
}
