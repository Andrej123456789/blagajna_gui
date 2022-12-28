import 'package:flutter/material.dart';

import 'product_input.dart';
import 'variales.dart';

class MainCashRegister extends StatefulWidget {
  const MainCashRegister({super.key});

  @override
  CashRegister createState() => CashRegister();
}

class CashRegister extends State<MainCashRegister> {
  OutputBox outputBox = OutputBox();

  var controller = TextEditingController();
  var focusNode = FocusNode();

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
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text("Products: "),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8.5))),
                          child: SizedBox(
                              width: 450,
                              height: 250,
                              child: SingleChildScrollView(
                                  child: Text(outputBox.getOutput())))),
                      const SizedBox(height: 10),
                      const Text("Total: "),
                      Text(priceText,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 40)
                    ],
                  ),
                ),
                Image.asset("assets/image.bmp", width: 150, height: 150),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 400,
                          child: TextField(
                            controller: controller,
                            focusNode: focusNode,
                            decoration: const InputDecoration(
                              labelText: "Barcode input",
                              border: OutlineInputBorder(),
                            ),
                            onSubmitted: (value) {
                              outputBox.addProduct(value);
                              updateText();

                              controller.clear();
                              focusNode.requestFocus();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainMenuInput()));
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 50)),
                      child: const Text("GUI menu"),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        updateText();
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 50)),
                      child: const Text("Update buffer"),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        outputBox.clearOutput();
                        updateText();
                        
                        priceText = "";
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 50)),
                      child: const Text("Clear buffer"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
