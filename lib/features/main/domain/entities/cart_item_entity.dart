import 'package:fruit_hub/core/entities/product_entity.dart';

class CartItemEntity
{
  final ProductEntity productEntity;
  int count;

  CartItemEntity({required this.productEntity, this.count=0 });

  num calcTotalPrise(){
    return  productEntity.price *count ;
  }
  num calcTotalWeight(){
    return  productEntity.unitAmount *count ;
  }

  increaseCount(){
    count++;
  }
  decreaseCount(){
    count--;
  }

}