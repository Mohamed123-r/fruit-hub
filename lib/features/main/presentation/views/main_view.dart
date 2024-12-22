import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  static const String routeName = 'main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SafeArea(child: HomeView()),
    );
  }
}
