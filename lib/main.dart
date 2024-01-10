import 'package:calculator_app/pages/homepage.dart';
import 'package:calculator_app/provider/calc_provider.dart';
import 'package:calculator_app/variables/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: CColor.backgroundColor,
            appBarTheme: const AppBarTheme(
              toolbarHeight: 62.0,
              backgroundColor: Colors.black,
              centerTitle: true,
              elevation: 5,
            )),
        home: const HomePage(),
      ),
    );
  }
}
