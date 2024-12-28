import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: double.infinity,
          color: Color(0xffEBF9F1),
          child: Center(
            child: Text(
              "لديك 3 منتجات في سله التسوق",
              style: TextStyles.bodySmallRegular.copyWith(
                color: AppColors.greenColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
