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
          body: Center(
              child: Wrap(
            alignment: WrapAlignment.spaceAround,
            direction: Axis.horizontal,
            children: <Widget>[
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              outputBox.addProduct("3850102520381",
                                  price: 1.60);
                              money.addMoney(1.60);
                            },
                            icon: Image.asset(
                                "assets/products/Čokolada Dorina.jpg"),
                            iconSize: 250,
                          ),
                          const Text("Chocolate Dorina (1.60 €)")
                        ],
                      )),
                  const SizedBox(width: 25, height: 25),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              outputBox.addProduct("4096542991152",
                                  price: 6.64);
                              money.addMoney(6.64);
                            },
                            icon: Image.asset(
                                "assets/products/Kuhača drvena.jpg"),
                            iconSize: 250,
                          ),
                          const Text("Kuhača drvena (6.64 €)")
                        ],
                      )),
                ],
              ),
              const SizedBox(width: 30, height: 30),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              outputBox.addProduct("9789531976152",
                                  price: 17.88);
                              money.addMoney(17.88);
                            },
                            icon: Image.asset(
                                "assets/products/Knjiga - Domagoj Kusalić - Napredno programiranje i algoritmi u C-u i C++-u.jpg"),
                            iconSize: 250,
                          ),
                          const Text(
                              "Domagoj Kusalić - Napredno programiranje i \nalgoritmi u C-u i C++-u (17.88 €)")
                        ],
                      )),
                  const SizedBox(width: 25, height: 7.5),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              outputBox.addProduct("0360002914523",
                                  price: 13.37);
                              money.addMoney(13.37);
                            },
                            icon: Image.asset(
                                "assets/products/Lektira - Voda.jpg"),
                            iconSize: 250,
                          ),
                          const Text("Lektira - Voda (13.37 €)")
                        ],
                      )),
                ],
              ),
              const SizedBox(width: 30, height: 30),
              Column(children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            outputBox.addProduct("9789542991152", price: 21.06);
                            money.addMoney(21.06);
                          },
                          icon: Image.asset(
                              "assets/products/Knjiga - Željko Kovačević - C++, analiza i primjena.jpg"),
                          iconSize: 250,
                        ),
                        const Text(
                            "Željko Kovačević - C++, analiza i \nprimjena (21.06 €)"),
                      ],
                    )),
                const SizedBox(width: 25, height: 6.5),
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            outputBox.addProduct("9789151976152", price: 3.32);
                            money.addMoney(3.32);
                          },
                          icon: Image.asset(
                              "assets/products/Orink magenta - tinta za printer.jpg"),
                          iconSize: 250,
                        ),
                        const Text("Orink magenta - tinta za printer (3.32 €)")
                      ],
                    )),
              ]),
            ],
          ))),
    );
  }
}
