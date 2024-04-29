import 'package:finalproj/widgets/login_form.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ITP368 Final Project"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const LoginForm(),
      )
    );
  }
}
