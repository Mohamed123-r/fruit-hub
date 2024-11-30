import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';
import 'notification_widget.dart';

AppBar buildAppBar({
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    title: Text(title, style: TextStyles.bodyLargeBold),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 18,
        )),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 16.0, left: 16.0),
        child: NotificationWidget(),
      ),
    ],
  );
}