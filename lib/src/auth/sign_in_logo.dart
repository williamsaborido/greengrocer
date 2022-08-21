import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../config/custom_colors.dart';

class SignInLogo extends StatelessWidget {
  const SignInLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // App name
        Text.rich(
          TextSpan(
            style: const TextStyle(
              fontSize: 40,
            ),
            children: <TextSpan>[
              const TextSpan(
                text: 'Green',
                style: TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: 'grocer',
                style: TextStyle(color: CustomColors.customContrastColor),
              ),
            ],
          ),
        ),

        // Carrousel
        SizedBox(
          height: 30,
          child: DefaultTextStyle(
              style: const TextStyle(fontSize: 25),
              child: AnimatedTextKit(
                pause: Duration.zero,
                repeatForever: true,
                animatedTexts: [
                  FadeAnimatedText('Frutas'),
                  FadeAnimatedText('Verduras'),
                  FadeAnimatedText('Legumes'),
                  FadeAnimatedText('Carnes'),
                  FadeAnimatedText('Cereais'),
                  FadeAnimatedText('Laticínios'),
                  FadeAnimatedText('E muito mais...'),
                ],
              )),
        ),
      ],
    );
  }
}
