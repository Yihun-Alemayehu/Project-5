import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/auth_bloc/auth_bloc.dart';
import 'package:project_5/data/model/user_model.dart';
import 'package:project_5/screens/home_screen.dart';
import 'package:project_5/screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
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
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            LoginEvent(
                              user: User(
                                  username: _usernameController.text,
                                  password: _passwordController.text),
                            ),
                          );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(
                            user: User(
                                username: _usernameController.text,
                                password: _passwordController.text),
                          ),
                        ),
                      );
                    },
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
        },
      ),
    );
  }
}
