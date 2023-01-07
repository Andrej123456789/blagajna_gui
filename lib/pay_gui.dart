import 'package:flutter/material.dart';
import 'pay.dart';

class MainPayPage extends StatefulWidget {
  const MainPayPage({super.key});

  @override
  PayPage createState() => PayPage();
}

class PayPage extends State<MainPayPage> {
  Pay pay = Pay();

  bool? creditCard = false;
  bool? separateBill = false;
  bool? ecoPaper = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                pay.execute(creditCard, separateBill, ecoPaper);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 80),
              ),
              child: const Text("Pay"),
            ),
            const SizedBox(height: 30),
            CheckboxListTile(
              title: const Text("Credit card"),
              value: creditCard,
              onChanged: (value) {
                setState(() {
                  creditCard = value;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Separate bill"),
              value: separateBill,
              onChanged: (value) {
                setState(() {
                  separateBill = value;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Eco paper"),
              value: ecoPaper,
              onChanged: (value) {
                setState(() {
                  ecoPaper = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
