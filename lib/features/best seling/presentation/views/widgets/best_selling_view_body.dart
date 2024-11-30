import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/grid_view_item.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        GridViewItem(),
      ],

    );
  }
}
