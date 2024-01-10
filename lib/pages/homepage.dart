import "package:calculator_app/pages/buttons.dart";
import "package:calculator_app/pages/calc_btn.dart";
import "package:calculator_app/pages/cust_text.dart";
import "package:calculator_app/pages/ouput_text.dart";
import "package:calculator_app/provider/calc_provider.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    const padding = EdgeInsets.symmetric(horizontal: 20, vertical: 30);
    final decoration = BoxDecoration(
      color: Colors.grey[900],
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    );

    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calculator",
            style: TextStyle(
              color: Colors.white60,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextfield(
                controller: provider.compController,
              ),
              OutputText(controller: provider.outputController),
              const Spacer(),
              Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index])),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 4])),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                            List.generate(4, (index) => buttonList[index + 8])),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    3, (index) => buttonList[index + 12]),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    3, (index) => buttonList[index + 15]),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const CalculateButton(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
