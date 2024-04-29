import 'package:finalproj/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ITP368 Final Project"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const SignUpForm(),
      )
    );
  }
}
