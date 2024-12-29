import 'package:flutter/material.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_view_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key, required this.cartListEntity});

  final List<CartItemEntity> cartListEntity;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemCount: cartListEntity.length,
        itemBuilder: (context, index) {
          return const Divider(
            color: Color(0xffF1F1F5),
          );
        },
        separatorBuilder: (context, index) {
          return CartViewItem(
            cartItemEntity: cartListEntity[index],
          );
        });
  }
}
