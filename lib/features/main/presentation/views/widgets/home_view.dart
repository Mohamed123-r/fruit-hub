import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/product_cubit/product_cubit.dart';
import 'package:fruit_hub/core/helper_funcation/get_it.dart';
import 'package:fruit_hub/core/repos/product_repo.dart';

import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(
        productRepo: getIt.get<ProductRepo>(),
      ),
      child: HomeViewBody(),
    );
  }
}
