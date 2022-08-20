import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  final Color color;

  const CustomDivider({
    required this.text,
    this.color = Colors.grey,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: color,
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(text),
          ),
          Expanded(
            child: Divider(
              color: color,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
