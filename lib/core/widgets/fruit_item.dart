import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/main/presentation/manage/cubits/cart_cubit/cart_cubit.dart';
import '../helper_funcation/is_arabic.dart';
import '../utils/app_colors.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 12),
                Flexible(
                  child: product.image.path.isEmpty
                      ? Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200),
                        )
                      : Image.network(
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
                  trailing: GestureDetector(
                    onTap: () {
                      context.read<CartCubit>().addProduct(product);
                    },
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: AppColors.greenColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 0,
              left: !isArabic() ? 0 : null,
              right: isArabic() ? 0 : null,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
