// ignore_for_file: avoid_print

import 'dart:math';

List<String> outputBox = <String>[];

double money = 0;
String currency = "€";

double roundDouble(double value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

class OutputBox {
  void addOutput(String str) {
    String finalString = str;
    finalString += "\n";

    outputBox.add(finalString);
  }

  String getOutput() {
    String returnString = "";

    for (var i = 0; i < outputBox.length; i++) {
      returnString += outputBox[i];
    }

    return returnString;
  }

  void clearOutput() {
    outputBox.clear();
  }

  void testOutput() {
    addOutput("jedan");
    addOutput("dva");

    print(getOutput());
    print("------------------");

    outputBox.clear();
  }
}

class Money {
  void addMoney(double price) {
    money += price;
  }

  void subtractMoney(double price) {
    money -= price;
  }

  void resetMoney() {
    money = 0 as double;
  }
}
