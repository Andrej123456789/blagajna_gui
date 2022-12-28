import 'package:flutter/material.dart';
import 'variales.dart';

class MainMenuInput extends StatefulWidget {
  const MainMenuInput({super.key});

  @override
  MenuInput createState() => MenuInput();
}

class MenuInput extends State<StatefulWidget> {
  OutputBox outputBox = OutputBox();
  Money money = Money();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        // Setting floatHeaderSlivers to true is required in order to float
        // the outer slivers over the inner scrollable.
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text('GUI menu'),
              floating: true,
              expandedHeight: 50.0,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: Stack(
          children: [
            Positioned(
                top: 10,
                left: 50,
                child: IconButton(
                  onPressed: () {
                    outputBox.addOutput("3850102520381");
                    money.addMoney(1.60);
                  },
                  icon: Image.asset("assets/products/Čokolada Dorina.jpg"),
                  iconSize: 250,
                )),
            const Positioned(
                top: 260, left: 105, child: Text("Chocolate Dorina (1.60 €)")),
            Positioned(
                top: 10,
                left: 350,
                child: IconButton(
                  onPressed: () {
                    outputBox.addOutput("9789531976152");
                    money.addMoney(17.88);
                  },
                  icon: Image.asset(
                      "assets/products/Knjiga - Domagoj Kusalić - Napredno programiranje i algoritmi u C-u i C++-u.jpg"),
                  iconSize: 250,
                )),
            const Positioned(
                top: 280,
                left: 410,
                child: Text(
                    "Domagoj Kusalić - \nNapredno programiranje i \nalgoritmi u C-u i C++-u \n              (17.88 €)")),
            Positioned(
                top: 10,
                left: 650,
                child: IconButton(
                  onPressed: () {
                    outputBox.addOutput("9789542991152");
                    money.addMoney(21.06);
                  },
                  icon: Image.asset(
                      "assets/products/Knjiga - Željko Kovačević - C++, analiza i primjena.jpg"),
                  iconSize: 250,
                )),
            const Positioned(
                top: 280,
                left: 690,
                child: Text(
                    "Željko Kovačević - C++, analiza i \nprimjena (21.06 €)")),
            Positioned(
                top: 350,
                left: 50,
                child: IconButton(
                  onPressed: () {
                    outputBox.addOutput("4096542991152");
                    money.addMoney(6.64);
                  },
                  icon: Image.asset("assets/products/Kuhača drvena.jpg"),
                  iconSize: 250,
                )),
            const Positioned(
                top: 650, left: 110, child: Text("Kuhača drvena (6.64 €)")),
            Positioned(
                top: 350,
                left: 350,
                child: IconButton(
                  onPressed: () {
                    outputBox.addOutput("0360002914523");
                    money.addMoney(13.37);
                  },
                  icon: Image.asset(
                      "assets/products/Lektira - Voda.jpg"),
                  iconSize: 250,
                )),
            const Positioned(
                top: 650,
                left: 410,
                child: Text(
                    "Lektira - Voda (13.37 €)")),
            Positioned(
                top: 350,
                left: 650,
                child: IconButton(
                  onPressed: () {
                    outputBox.addOutput("9789151976152");
                    money.addMoney(3.32);
                  },
                  icon: Image.asset(
                      "assets/products/Orink magenta - tinta za printer.jpg"),
                  iconSize: 250,
                )),
            const Positioned(
                top: 650,
                left: 660,
                child: Text(
                    "Orink magenta - tinta za printer (3.32 €)")),
          ],
        ),
      ),
    );
  }
}
