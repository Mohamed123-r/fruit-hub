import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/assets.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
        Text(
          'منتجاتنا',
          style: TextStyles.bodyBasaBold,
        ),
        const Spacer(),
        MaterialButton(
          onPressed: () {},
          minWidth: 0,
          height: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color: Color(0xffcacece66),
            ),
          ),
          child: SvgPicture.asset(
            Assets.imagesFillterTo,
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
