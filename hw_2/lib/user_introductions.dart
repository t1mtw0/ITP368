import 'package:flutter/material.dart';
import 'package:hw_2/user_introduction.dart';

class UserIntroductions extends StatefulWidget {
  final List<String> names;
  final List<String> introductions;

  const UserIntroductions({super.key, required this.names, required this.introductions});

  @override
  State<UserIntroductions> createState() => _UserIntroductions();
}

class _UserIntroductions extends State<UserIntroductions> {
  int _curUser = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: nextUser,
          child: UserIntroduction(
            name: widget.names[_curUser],
            introduction: widget.introductions[_curUser],
          ),
        ),
      ),
    );
  }

  void nextUser() {
    setState(() {
      if (++_curUser == widget.names.length) {
        _curUser = 0;
      }
    });
  }
}