import 'package:flutter/material.dart';
import 'package:greengrocer/src/components/quantity_widget.dart';

import '../config/custom_colors.dart';
import '../models/cart_item_model.dart';
import '../services/util_service.dart';

class CartTile extends StatefulWidget {
  final CartItemModel cartItem;
  final Function(CartItemModel) remove;

  const CartTile({
    required this.cartItem,
    required this.remove,
    Key? key,
  }) : super(key: key);

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        // imagem
        leading: Image.asset(
          widget.cartItem.item.imageUrl,
          width: 60,
          height: 60,
        ),
        // quantidade
        trailing: QuantityWidget(
          suffixText: widget.cartItem.item.unit,
          value: widget.cartItem.quantity,
          isRemovable: true,
          result: (quantity) {
            setState(() {
              widget.cartItem.quantity = quantity;

              if (quantity <= 0) {
                widget.remove(widget.cartItem);
              }
            });
          },
        ),
        // titulo
        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        // total
        subtitle: Text(
          UtilService.priceToCurrency(widget.cartItem.totalPrice),
          style: TextStyle(
              color: CustomColors.customSwatchColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
