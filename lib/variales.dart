import 'dart:math';

List<String> outputBox = <String>[];
int products = 1;

double money = 0;
String currency = "€";

double roundDouble(double value, int places) {
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

class OutputBox {
  void addProduct(String str, {price}) {
    String finalBarcode = "";
    String finalPrice = "";

    if (str.contains(' '))
    {
      finalBarcode = str.substring(0, str.indexOf(' '));

      finalPrice = str.substring(str.indexOf(' '), str.length);
      money += double.parse(finalPrice);
    }

    else
    {
      finalBarcode = str;
      finalPrice = price.toString();
    }

    String finalString = "Product $products: $finalBarcode | Price: $finalPrice $currency";
    products++;

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
    
    money = 0;
    products = 0;
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
