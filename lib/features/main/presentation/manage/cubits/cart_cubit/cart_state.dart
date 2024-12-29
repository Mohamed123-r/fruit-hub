part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class AddCartItem extends CartState {}
final class RemoveCartItem extends CartState {}