import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
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
            const Text('E-mail'),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your e-mail',
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
            const Text('Repeat password'),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password again',
              ),
              onChanged: (value) {
                // Update the password value
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform login action
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
