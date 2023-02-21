import './item_model.dart';

class CartItemModel {
  ItemModel item;
  int quantity;

  double get totalPrice => item.price * quantity;

  CartItemModel({
    required this.item,
    required this.quantity,
  });
}
