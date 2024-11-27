import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/generated/assets.dart';
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
        'صباح الخير !..',
        style: TextStyles.bodyBasaRegular.copyWith(
          color: AppColors.grayscale400Color,
        ),
      ),
      subtitle: Text(
        'أحمد مصطفي',
        style: TextStyles.bodyBasaBold,
      ),
      trailing: CircleAvatar(
        radius: 17,
        backgroundColor: Color(0xffEEF8ED),
        child: SvgPicture.asset(
          Assets.imagesNotification,
        ),
      ),
    );
  }
}
