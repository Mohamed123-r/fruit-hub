import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'custom_home_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
       SliverToBoxAdapter(
         child: CustomHomeAppbar(),
       )
      ],
    );
  }
}
