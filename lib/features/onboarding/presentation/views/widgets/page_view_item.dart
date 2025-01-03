import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/database/cache_helper.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/sign_in_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              SafeArea(
                child: Visibility(
                  visible: isVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LogInView.routeName);
                        CacheHelper().saveData(key: isOnboardingViewSeen, value: true);
                      },
                      child: Text(
                        S.of(context).onboarding_skip,
                        style: TextStyles.bodySmallRegular.copyWith(
                          color: AppColors.grayscaleColor,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 37,
          ),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyles.bodySmallBold.copyWith(
              color: AppColors.grayscaleColor,
            ),
          ),
        )
      ],
    );
  }
}
