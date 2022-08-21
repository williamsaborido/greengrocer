import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../components/custom_elevated_button.dart';
import '../components/custom_text_field.dart';
import '../config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  final MaskTextInputFormatter cpfFormatter = MaskTextInputFormatter(
    mask: "###.###.###-##",
    filter: {'#': RegExp(r'[0-9]')},
  );

  final MaskTextInputFormatter phoneFormatter = MaskTextInputFormatter(
    mask: "(##) ####-#####",
    filter: {'#': RegExp(r'[0-9]')},
  );

  SignUpScreen({Key? key}) : super(key: key);

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
          child: Stack(
            children: [
              Column(
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
                        CustomTextField(
                          prefixIcon: Icons.phone,
                          inputFormatters: [phoneFormatter],
                          label: 'Celular',
                          hint: 'Digite seu número de celular',
                        ),

                        // ID Field
                        CustomTextField(
                          prefixIcon: Icons.file_copy,
                          inputFormatters: [cpfFormatter],
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
              Positioned(
                top: 10,
                left: 10,
                child: SafeArea(
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
