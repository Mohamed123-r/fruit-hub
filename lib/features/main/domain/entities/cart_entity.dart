import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';

class CartEntity {

  final List<CartItemEntity> cartItems;

  CartEntity({required this.cartItems});

  addItem(CartItemEntity item){
    cartItems.add(item);
  }

  removeItem(CartItemEntity item){
    cartItems.remove(item);
  }
}