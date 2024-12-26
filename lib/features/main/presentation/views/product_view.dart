import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/product_view_body.dart';

import '../../../../generated/l10n.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context: context,
        title: S.of(context).bottom_navigation_products,
      ),
      body: ProductViewBody(),
    );
  }
}
