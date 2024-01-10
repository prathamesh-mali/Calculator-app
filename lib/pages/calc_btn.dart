import 'package:calculator_app/provider/calc_provider.dart';
import 'package:calculator_app/variables/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
            .setValue("="),
        child: Container(
          height: 160,
          width: 74,
          decoration: BoxDecoration(
              color: CColor.secondaryColor,
              borderRadius: BorderRadius.circular(40)),
          child: const Center(
            child: Text(
              "=",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
        ));
  }
}
