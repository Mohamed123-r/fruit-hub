import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

import 'cart_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CartActionButton(
              onPressed: () {},
              color: AppColors.greenColor,
              icon: Icons.add,
              iconColor: Colors.white),
          Text(
            "3",
            style: TextStyles.bodyBasaBold,
          ),
          CartActionButton(
              onPressed: () {},
              color: AppColors.grayscale400Color.withOpacity(0.3  ),
              icon: Icons.remove,
              iconColor: Colors.grey),
        ],
      ),
    );
  }
}
