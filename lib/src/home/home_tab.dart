import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

import '../components/app_bar_logo.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarLogo(),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                animationType: BadgeAnimationType.scale,
                badgeContent: const Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(),
    );
  }
}
