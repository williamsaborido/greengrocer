import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback voidCallback;

  const CustomTextButton({
    required this.text,
    required this.voidCallback,
    this.color = Colors.green,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: voidCallback,
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}
