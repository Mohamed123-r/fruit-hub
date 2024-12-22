import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper_funcation/get_user.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/widgets/notification_widget.dart';
import 'package:fruit_hub/generated/assets.dart';
import 'package:fruit_hub/generated/l10n.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: Image.asset(
        Assets.imagesProfileImage,
        width: 44,
        height: 44,
      ),
      title: Text(
        S.of(context).good_morning,
        style: TextStyles.bodyBasaRegular.copyWith(
          color: AppColors.grayscale400Color,
        ),
      ),
      subtitle: Text(
        getUser().name,
        style: TextStyles.bodyBasaBold,
      ),
      trailing: NotificationWidget(),
    );
  }
}
