import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/cubits/product_cubit/product_cubit.dart';
import 'package:fruit_hub/core/helper_funcation/get_dummy_product.dart';
import 'package:fruit_hub/core/widgets/grid_view_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductGridViewItemBlocBuilder extends StatelessWidget {
  const ProductGridViewItemBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {

        if (state is ProductSuccess) {
          return GridViewItem(products: state.products,);
        } else if (state is ProductFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: Text(
                "Oops something went wrong, please try later",
              ),
            ),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: GridViewItem(products: getDummyProducts(),),
          );
        }
      },
    );
  }
}
