import 'package:flutter/material.dart';
import 'package:project_5/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
            const Text('Welcome to Login screen'),
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
              child: const Text('LogIn'),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ),
                );
              },
              child: const Text('Don\'t have an account ?, sign Up here'),
            ),
          ],
        ),
      ),
    );
  }
}
