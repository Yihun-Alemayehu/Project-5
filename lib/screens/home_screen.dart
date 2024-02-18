import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body:const  Center(
        child: Column(
          children: [
            Text('Username'),
            Text('Password'),

          ],
        ),
      ),
    );
  }
}