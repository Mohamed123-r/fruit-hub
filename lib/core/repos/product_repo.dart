import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/error/failures.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();

  Future<Either<Failure, List<ProductEntity>>> getBastSellersProduct();
}
