import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final IconData prefixIcon;
  final String label;
  final bool isSecret;
  final String hint;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    required this.prefixIcon,
    required this.label,
    this.hint = '',
    this.isSecret = false,
    this.inputFormatters,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          label: Text(widget.label),
          hintText: widget.hint,
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.isSecret
              ? IconButton(
                  icon:
                      Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
