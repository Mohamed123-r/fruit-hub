import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruit_hub/features/main/presentation/manage/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/main/presentation/views/home_view.dart';
import 'package:fruit_hub/features/main/presentation/views/product_view.dart';

import 'cart_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const String routeName = 'main';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;

  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          onItemTapped: (int value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
        body: SafeArea(
          child: IndexedStack(
            index: currentIndex,
            children: [
              HomeView(),
              ProductView(),
              CartView(),
            ],
          ),
        ),
      ),
    );
  }
}
