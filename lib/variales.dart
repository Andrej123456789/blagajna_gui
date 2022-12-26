// ignore_for_file: avoid_print

List<String> outputBox = <String>[];

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
