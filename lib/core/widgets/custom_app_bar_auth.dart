import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

AppBar buildAppBarAuth(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyles.bodyLargeBold,
    ),
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
      ),
      onPressed: () => Navigator.pop(context),
    ),
  );
}