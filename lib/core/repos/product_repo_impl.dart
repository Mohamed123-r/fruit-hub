import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/repos/product_repo.dart';
import '../entities/product_entity.dart';
import '../error/failures.dart';

class ProductRepoImpl implements ProductRepo {
  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBastSellersProduct() {
    // TODO: implement getBastSellersProduct
    throw UnimplementedError();
  }
}
