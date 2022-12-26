/* Flutter's imports */
import 'package:flutter/material.dart';

/* Imports from this project */
import 'cash_register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            const Text('Username'),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your username',
              ),
              onChanged: (value) {
                // Update the username value
              },
            ),
            const SizedBox(height: 16.0),
            const Text('Password'),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
              onChanged: (value) {
                // Update the password value
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);

                // TODO: check credentials and write them to database
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainCashRegister()));
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
