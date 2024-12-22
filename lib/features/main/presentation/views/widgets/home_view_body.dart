import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_search_text_field.dart';
import 'package:fruit_hub/core/widgets/grid_view_item.dart';

import 'best_seling_header.dart';
import 'custom_home_appbar.dart';
import 'over_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

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
        GridViewItem(),
      ],
    );
  }
}
