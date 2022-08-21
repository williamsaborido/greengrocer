import 'package:flutter/material.dart';
import 'package:greengrocer/src/base/base_screen.dart';
import 'package:greengrocer/src/components/custom_outlined_button.dart';

import '../components/custom_divider.dart';
import '../components/custom_elevated_button.dart';
import '../components/custom_text_button.dart';
import '../components/custom_text_field.dart';
import '../components/sign_in_logo.dart';
import '../config/custom_colors.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              const Expanded(
                child: SignInLogo(),
              ),

              // Login Form
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // Login Field
                    const CustomTextField(
                      prefixIcon: Icons.mail,
                      label: 'e-mail',
                      hint: 'Digite seu e-mail',
                    ),

                    // Password Field
                    const CustomTextField(
                      prefixIcon: Icons.lock,
                      isSecret: true,
                      label: 'password',
                      hint: 'Digite sua senha',
                    ),

                    // Login button
                    CustomElevatedButton(
                      text: 'Entrar',
                      voidCallback: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const BaseScreen(),
                        ),
                      ),
                    ),

                    // Password recover button
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomTextButton(
                        text: 'Esqueceu a senha?',
                        color: CustomColors.customContrastColor,
                        voidCallback: () {},
                      ),
                    ),

                    // Divider
                    CustomDivider(
                      text: 'ou',
                      color: Colors.grey.withAlpha(90),
                    ),

                    // Sign up button
                    CustomOutlinedButton(
                      text: 'Criar conta',
                      voidCallback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
