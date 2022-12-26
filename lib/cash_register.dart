import 'package:flutter/material.dart';

class CashRegister extends StatelessWidget {
  const CashRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Blagajna (Cash Register)'),
        ),
        body: Stack(
          children: [
            const Positioned(
              top: 10,
              left: 110,
              child: Text("Output"),
            ),
            const Positioned(
              bottom: 10,
              left: 110,
              child: Text("test")
            ),
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
