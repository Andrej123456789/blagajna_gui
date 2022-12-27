import 'package:flutter/material.dart';
import 'variales.dart';

class MainSettingsMenu extends StatefulWidget {
  const MainSettingsMenu({super.key});

  @override
  SettingsMenu createState() => SettingsMenu();
}

class SettingsMenu extends State<StatefulWidget> {
  var controller = TextEditingController();
  var focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: controller,
              focusNode: focusNode,
              autofocus: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter currency',
              ),
              onSubmitted: (value) {
                currency = value;

                controller.clear();
                focusNode.requestFocus();
              },
            ),
          ],
        ),
      ),
    );
  }
}
