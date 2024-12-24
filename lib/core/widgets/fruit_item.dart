import 'package:flutter/material.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/assets.dart';

import '../../constant.dart';
import '../helper_funcation/is_arabic.dart';
import '../utils/app_colors.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    logger.w(product.image);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: !isArabic() ? 0 : null,
              right: isArabic() ? 0 : null,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_outlined),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 12),
                Flexible(
                  child: Image.network(
                    product.image.path,
                  ),
                ),
                const SizedBox(height: 12),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    product.name,
                    style: TextStyles.bodySmallRegular,
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        "${product.price.toString()} جنيه",
                        style: TextStyles.bodySmallBold
                            .copyWith(color: AppColors.orangeColor),
                      ),
                      Text(
                        '/ الكيلو',
                        style: TextStyles.bodySmallRegular.copyWith(
                            color: AppColors.orangeColor.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  trailing: CircleAvatar(
                    radius: 17,
                    backgroundColor: AppColors.greenColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
