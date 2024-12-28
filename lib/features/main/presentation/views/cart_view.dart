import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/generated/l10n.dart';

import 'widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context: context,
        showLeading: false,
        showAction: false,
        title: S.of(context).bottom_navigation_shopping_cart,
      ),
      body: CartViewBody(),
    );
  }
}
