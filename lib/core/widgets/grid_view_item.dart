import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/fruit_item.dart';

import '../entities/product_entity.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: FruitItem(
          product: products[index],
        ),
      ),
    );
  }
}
