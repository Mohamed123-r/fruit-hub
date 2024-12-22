import 'package:bloc/bloc.dart';
import 'package:fruit_hub/core/repos/product_repo.dart';
import 'package:meta/meta.dart';

import '../../entities/product_entity.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepo productRepo;

  ProductCubit(super.initialState, {required this.productRepo});

  Future<void> getProducts() async {
    emit(ProductLoading());
    final response = await productRepo.getProducts();
    response.fold(
      (failure) => emit(ProductFailure(
        message: failure.message,
      )),
      (products) => emit(
        ProductSuccess(products: products),
      ),
    );
  }

  Future<void> getBestSellersProducts() async {
    emit(ProductLoading());
    final response = await productRepo.getBastSellersProduct();
    response.fold(
      (failure) => emit(ProductFailure(
        message: failure.message,
      )),
      (products) => emit(
        ProductSuccess(products: products),
      ),
    );
  }
}
