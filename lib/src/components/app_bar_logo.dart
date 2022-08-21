import 'package:flutter/material.dart';

import '../config/custom_colors.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // App name
        Text.rich(
      TextSpan(
        style: const TextStyle(
          fontSize: 35,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Green',
            style: TextStyle(color: CustomColors.customSwatchColor),
          ),
          TextSpan(
            text: 'grocer',
            style: TextStyle(color: CustomColors.customContrastColor),
          ),
        ],
      ),
    );
  }
}
