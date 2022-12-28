import 'package:flutter/material.dart';

import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

import 'package:url_launcher/url_launcher.dart';

import 'signup.dart';
import 'login.dart';

class PhoneNumber {
  showAlertDialog(BuildContext context) {
    Widget okButton = ElevatedButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("+385 99 966 9636"),
      content: const Text("This is DEMO of the phone number"),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class Help {
  showAlertDialog(BuildContext context) {
    Widget okButton = ElevatedButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // TODO: read from database
    AlertDialog alert = AlertDialog(
      title: const Text("About this software/How to use it: "),
      content: const Text(
          "GUI version of cash register written in Dart using Flutter\n\nTo enter price of a new product which is not located in database, seperate barcode and price by space!\n\nPlease do not use this in real enviroment because it cannot connect to your state's administration for taxes, this is just simulator for playing around!"),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class Blagajna extends StatelessWidget {
  const Blagajna({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blagajna',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Blagajna - homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PhoneNumber phoneNumber = PhoneNumber();
  Help help = Help();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const Drawer(),
      body: FooterView(
        footer: Footer(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.call,
                                    size: 20.0,
                                  ),
                                  color: const Color(0xFF162A49),
                                  onPressed: () {
                                    phoneNumber.showAlertDialog(context);
                                  },
                                ),
                              ),
                            )),
                        SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.help_outline,
                                    size: 20.0,
                                  ),
                                  color: const Color(0xFF162A49),
                                  onPressed: () {
                                    help.showAlertDialog(context);
                                  },
                                ),
                              ),
                            )),
                        SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child: Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.code,
                                    size: 20.0,
                                  ),
                                  color: const Color(0xFF162A49),
                                  onPressed: () async {
                                    const String url =
                                        "https://github.com/Andrej123456789/blagajna_gui";
                                    final Uri uri = Uri.parse(url);
                                    if (await canLaunchUrl(uri)) {
                                      await launchUrl(uri);
                                    }
                                  },
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  const Text(
                    'Blagajna, GUI version',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Color(0xFF162A49)),
                  ),
                  const Text(
                    'Andrej Bartulin, 2022, BSD 3-Clause License',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Color(0xFF162A49)),
                  ),
                ]),
          ),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                    fixedSize: const Size(300, 80)),
                child: const Text("Login"),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(20.0),
                          fixedSize: const Size(300, 80)),
                      child: const Text("Sign Up"),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
