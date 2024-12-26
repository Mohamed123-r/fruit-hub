import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/cubits/product_cubit/product_cubit.dart';
import '../../../../../core/widgets/custom_search_text_field.dart';
import 'product_grid_view_item_bloc_builder.dart';
import 'product_header.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  @override
  void initState() {
    context.read<ProductCubit>().getProducts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomSearchTextField(),
              ),
              SizedBox(
                height: 12,
              ),
              ProductHeader(),
            ],
          ),
        ),
        ProductGridViewItemBlocBuilder(),
      ],
    );
  }
}
