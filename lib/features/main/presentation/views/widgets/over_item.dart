import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper_funcation/is_arabic.dart';

import 'package:fruit_hub/core/utils/app_text_styles.dart';

import 'package:fruit_hub/generated/assets.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'button_over_item.dart';

class OverItem extends StatelessWidget {
  const OverItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width - 32;
    return AspectRatio(
      aspectRatio: 340 / 162,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -7,

            child: Image.asset(
              Assets.imagesOverimagetest,
              fit: BoxFit.fill,
              width: width,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(
                    Assets.imagesOverBackgroundImage,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Column(
                  crossAxisAlignment: isArabic()
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      S.of(context).holiday_offer,
                      style: TextStyles.bodySmallRegular.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      S.of(context).discount_25,
                      style: TextStyles.bodyLargeBold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ButtonOverItem(),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
