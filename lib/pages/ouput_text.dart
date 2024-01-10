import "package:calculator_app/variables/colors.dart";
import "package:flutter/material.dart";

class OutputText extends StatelessWidget {
  const OutputText({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: controller,
        readOnly: true,
        textAlign: TextAlign.right,
        autofocus: true,
        showCursor: false,
        cursorColor: CColor.secondaryColor,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          filled: true,
          fillColor: Theme.of(context).primaryColor,
        ),
        style: const TextStyle(
          fontSize: 32,
          color: Colors.white,
        ),
      ),
    );
  }
}
