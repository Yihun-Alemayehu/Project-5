import 'package:flutter/material.dart';
import 'package:project_5/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Welcome to Register screen'),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  hintText: 'Enter username here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: 'Enter password here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: const Text('Already have an account ?, Login here'),
            ),
          ],
        ),
      ),
    );
  }
}
