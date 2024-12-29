import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/services/bloc_opesever.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';

import '../../manage/cubits/cart_cubit/cart_cubit.dart';
import 'cart_items_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
                  ? SizedBox()
                  : Container(
                      height: 40,
                      width: double.infinity,
                      color: Color(0xffEBF9F1),
                      child: Center(
                        child: Text(
                          "لديك 3 منتجات في سله التسوق",
                          style: TextStyles.bodySmallRegular.copyWith(
                            color: AppColors.greenColor,
                          ),
                        ),
                      ),
                    ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            CartItemsList(
              cartListEntity: [],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.72,
            right: 16,
            left: 16,
          ),
          child: context.read<CartCubit>().cartEntity.cartItems.isEmpty
              ? SizedBox()
              : CustomButton(
                  title: "الدفع  120جنيه",
                  onPressed: () {},
                ),
        ),
      ],
    );
  }
}
