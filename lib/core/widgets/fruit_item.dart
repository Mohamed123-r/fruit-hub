import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/assets.dart';

import '../helper_funcation/is_arabic.dart';
import '../utils/app_colors.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
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
                Image.asset(Assets.imagesItemTest),
                const SizedBox(height: 12),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    'فراولة',
                    style: TextStyles.bodySmallRegular,
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '30جنية ',
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
