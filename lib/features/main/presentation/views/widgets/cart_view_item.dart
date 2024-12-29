import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/generated/assets.dart';
import 'cart_item_action_buttons.dart';

class CartViewItem extends StatelessWidget {
  const CartViewItem({super.key, required this.cartItemEntity});
final CartItemEntity cartItemEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 1),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              height: 92,
              width: 73,
              color: Color(0XFFF3F5F7),
              child: Center(
                child: Image.network(
                  cartItemEntity.productEntity.image.path,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cartItemEntity.productEntity.name,
                        style: TextStyles.bodySmallBold,
                      ),
                      SvgPicture.asset(
                        Assets.imagesTrash,
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "${cartItemEntity.calcTotalWeight()} كم",
                    style: TextStyles.bodySmallRegular.copyWith(
                      color: AppColors.orangeColor,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CartItemActionButtons(),
                      Text("${cartItemEntity.calcTotalPrise()} جنيه",
                          style: TextStyles.bodyBasaBold.copyWith(
                            color: AppColors.orangeColor,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
