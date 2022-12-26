import 'package:flutter/material.dart';
import 'variales.dart';

class MainManualInput extends StatefulWidget {
  const MainManualInput({super.key});

  @override
  ManualInput createState() => ManualInput();
}

class ManualInput extends State<MainManualInput> {
  OutputBox outputBox = OutputBox();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Barcode input'),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter barcode',
              ),
              onSubmitted: (value) {
                outputBox.addOutput(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MainMenuInput extends StatefulWidget {
  const MainMenuInput({super.key});

  @override
  MenuInput createState() => MenuInput();
}

class MenuInput extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Product 1"),
            Text("Product 2")
          ],
        ),
      ),
    );
  }
}
