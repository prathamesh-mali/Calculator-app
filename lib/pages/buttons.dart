import 'package:calculator_app/provider/calc_provider.dart';
import 'package:calculator_app/variables/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  final String label;

  final Color textColor;
  const Button1(
      {super.key, required this.label, this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(label),
      child: Material(
        elevation: 4,
        color: CColor.primaryColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 41,
          backgroundColor: CColor.secondary2Color,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> buttonList = [
  const Button1(
    label: "C",
    textColor: CColor.secondaryColor,
  ),
  const Button1(
    label: "/",
    textColor: CColor.secondaryColor,
  ),
  const Button1(
    label: "X",
    textColor: CColor.secondaryColor,
  ),
  const Button1(
    label: "AC",
    textColor: CColor.secondaryColor,
  ),
  const Button1(
    label: "7",
  ),
  const Button1(
    label: "8",
  ),
  const Button1(
    label: "9",
  ),
  const Button1(
    label: "+",
    textColor: CColor.secondaryColor,
  ),
  const Button1(
    label: "4",
  ),
  const Button1(
    label: "5",
  ),
  const Button1(
    label: "6",
  ),
  const Button1(
    label: "-",
    textColor: CColor.secondaryColor,
  ),
  const Button1(
    label: "1",
  ),
  const Button1(
    label: "2",
  ),
  const Button1(
    label: "3",
  ),
  const Button1(
    label: "%",
  ),
  const Button1(
    label: "0",
  ),
  const Button1(
    label: ".",
  ),
];
