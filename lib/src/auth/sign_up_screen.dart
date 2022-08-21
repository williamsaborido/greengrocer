import 'package:flutter/material.dart';

import '../components/custom_elevated_button.dart';
import '../components/custom_text_field.dart';
import '../config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
            children: [
              // Logo
              const Expanded(
                child: Center(
                  child: Text(
                    'Cadastro',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),

              // Sign up Form
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
                    // E-mail Field
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

                    // Name Field
                    const CustomTextField(
                      prefixIcon: Icons.person,
                      label: 'Nome',
                      hint: 'Digite seu nome',
                    ),

                    // Mobile Field
                    const CustomTextField(
                      prefixIcon: Icons.phone,
                      label: 'Celular',
                      hint: 'Digite seu número de celular',
                    ),

                    // ID Field
                    const CustomTextField(
                      prefixIcon: Icons.file_copy,
                      label: 'CPF',
                      hint: 'Digite seu CPF',
                    ),

                    // Login button
                    CustomElevatedButton(
                      text: 'Cadastrar usuário',
                      voidCallback: () {},
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
