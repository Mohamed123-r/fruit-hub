import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/repos/product_repo.dart';
import 'package:fruit_hub/core/services/database_service.dart';
import '../entities/product_entity.dart';
import '../error/failures.dart';
import '../models/product_model.dart';
import '../utils/endpoints.dart';

class ProductRepoImpl implements ProductRepo {
  final DatabaseService databaseService;

  ProductRepoImpl({required this.databaseService});

  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data = await databaseService.getData(
        path: EndPoints.kAddProduct,
      );
      List<ProductEntity> products;
      products = data
          .map(
            (e) => ProductModel.fromJson(e).toEntity(),
          )
          .toList();
      return right(products);
    } catch (e) {
      return left(
        ServerFailure(
          "Failed to get products",
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBastSellersProduct() {
    // TODO: implement getBastSellersProduct
    throw UnimplementedError();
  }
}
