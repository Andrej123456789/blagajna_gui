// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

List<String> outputBox = <String>[];

class MainCashRegister extends StatefulWidget {
  const MainCashRegister({super.key});

  @override
  CashRegister createState() => CashRegister();
}

class CashRegister extends State<MainCashRegister> {
  void addOutput(String str) {
    String finalString = str;
    finalString += "\n";

    outputBox.add(finalString);
    updateText();
  }

  String getOutput() {
    String returnString = "";

    for (var i = 0; i < outputBox.length; i++) {
      returnString += outputBox[i];
    }

    return returnString;
  }

  void testOutput() {
    addOutput("jedan");
    addOutput("dva");

    print(getOutput());    
    print("------------------");

    outputBox.clear();
  }

  String outputText = "";
  void updateText() {
    setState(() {
      outputText = getOutput();
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
              child: Text(getOutput()),
            ),
            Positioned(
                bottom: 20,
                left: 110,
                child: ElevatedButton(
                  onPressed: () {
                    addOutput("apple");
                  },
                  child: const Text("Manual input"),
                )),
            Positioned(
                bottom: 20,
                left: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Choose from menu"),
                )),
            Positioned(
                bottom: 20,
                left: 435,
                child: ElevatedButton(
                  onPressed: () {
                    outputBox.clear();
                    updateText();
                  },
                  child: const Text("Clear buffer"),
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
