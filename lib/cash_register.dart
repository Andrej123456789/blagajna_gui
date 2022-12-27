import 'package:flutter/material.dart';

import 'product_input.dart';
import 'settings.dart';
import 'variales.dart';

class MainCashRegister extends StatefulWidget {
  const MainCashRegister({super.key});

  @override
  CashRegister createState() => CashRegister();
}

class CashRegister extends State<MainCashRegister> {
  OutputBox outputBox = OutputBox();

  String outputText = "";
  void updateText() {
    setState(() {
      outputText = outputBox.getOutput();
    });

    updatePriceBox();
  }

  String priceText = "";
  void updatePriceBox() {
    setState(() {
      priceText = roundDouble(money, 2).toString() + currency;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Blagajna (Cash Register)'),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 10,
              left: 110,
              child: Text(outputBox.getOutput()),
            ),
            Positioned(
              top: 350,
              left: 110,
              child: Text(priceText),
            ),
            Positioned(
                bottom: 20,
                left: 110,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainManualInput()));
                  },
                  child: const Text("Manual input"),
                )),
            Positioned(
                bottom: 20,
                left: 255,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainMenuInput()));
                  },
                  child: const Text("Choose from menu"),
                )),
            Positioned(
                bottom: 20,
                left: 435,
                child: ElevatedButton(
                  onPressed: () {
                    updateText();
                  },
                  child: const Text("Update buffer"),
                )),
            Positioned(
                bottom: 20,
                left: 575,
                child: ElevatedButton(
                  onPressed: () {
                    outputBox.clearOutput();
                    updateText();

                    priceText = "";
                    money = 0;
                  },
                  child: const Text("Clear buffer"),
                )),
            Positioned(
                bottom: 20,
                left: 710,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainSettingsMenu()));
                  },
                  child: const Text("Settings"),
                )),
            Positioned(
                right: 50,
                top: 350,
                child: Image.asset(
                  'assets/image.bmp',
                  width: 150,
                  height: 150,
                )),
          ],
        ));
  }
}
