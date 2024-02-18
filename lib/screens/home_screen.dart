import 'package:flutter/material.dart';
import 'package:project_5/data/model/user_model.dart';

class HomeScreen extends StatelessWidget {
  final User user;
   HomeScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.username),
            const SizedBox(height: 20,),
            Text(user.password),

          ],
        ),
      ),
    );
  }
}