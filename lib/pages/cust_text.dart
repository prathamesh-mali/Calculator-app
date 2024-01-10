import 'package:calculator_app/variables/colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: true,
      textAlign: TextAlign.right,
      autofocus: true,
      showCursor: true,
      cursorColor: CColor.secondaryColor,
      decoration: InputDecoration(
        filled: true,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        fillColor: Theme.of(context).primaryColor,
        contentPadding: const EdgeInsets.all(25),
      ),
      style: const TextStyle(
        fontSize: 32,
        color: Colors.white,
      ),
    );
  }
}
