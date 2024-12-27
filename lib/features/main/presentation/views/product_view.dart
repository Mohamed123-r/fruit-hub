import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/product_cubit/product_cubit.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/product_view_body.dart';

import '../../../../core/helper_funcation/get_it.dart';
import '../../../../core/repos/product_repo.dart';
import '../../../../generated/l10n.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(
        productRepo: getIt.get<ProductRepo>(),
      ),
      child: Scaffold(
        appBar: buildAppBar(
          context: context,
          showLeading: false,
          title: S.of(context).bottom_navigation_products,
        ),
        body: ProductViewBody(),
      ),
    );
  }
}
