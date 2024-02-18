import 'package:flutter/material.dart';
import 'package:project_5/auth_bloc/auth_bloc.dart';
import 'package:project_5/screens/register_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        home: RegisterScreen(),
      ),
    );
  }
}
