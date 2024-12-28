import 'package:flutter/material.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_view_item.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(

        itemBuilder :
    ( context, index){
      return const Divider(
        color: Color(0xffF1F1F5),
      );
    }

        , separatorBuilder: ( context, index){
          return CartViewItem();
        } );
  }
}
