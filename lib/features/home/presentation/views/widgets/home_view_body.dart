import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_search_text_field.dart';

import 'custom_home_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomHomeAppbar(),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomSearchTextField(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
