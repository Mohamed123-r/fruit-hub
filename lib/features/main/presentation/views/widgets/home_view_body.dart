import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/product_cubit/product_cubit.dart';
import 'package:fruit_hub/core/widgets/custom_search_text_field.dart';
import 'package:fruit_hub/core/widgets/grid_view_item.dart';

import 'best_seling_header.dart';
import 'custom_home_appbar.dart';
import 'over_list_view_item.dart';
import 'product_grid_view_item_bloc_builder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().getBestSellersProducts();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHomeAppbar(),
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
              OverListViewItem(),
              BestSellingHeader(),
            ],
          ),
        ),
        ProductGridViewItemBlocBuilder(),
      ],
    );
  }
}
