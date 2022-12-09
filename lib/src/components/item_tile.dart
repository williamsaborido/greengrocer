import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:intl/intl.dart';

import '../models/item_model.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;
  final NumberFormat currency = NumberFormat.simpleCurrency(locale: "pt_BR");
  
  ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // imagem
            Expanded(child: Image.asset(item.imageUrl)),
            // nome
            Text(
              item.itemName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            // preço - unidade
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  currency.format(item.price),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,color: CustomColors.customSwatchColor
                  ),
                ),
                Text('/${item.unit}',
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),),
              ],
            ),            
          ],
        ),
      ),
    );
  }
}
