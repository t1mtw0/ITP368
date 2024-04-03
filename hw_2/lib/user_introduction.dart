import 'package:flutter/widgets.dart';

class UserIntroduction extends StatelessWidget {
  final String name;
  final String introduction;

  const UserIntroduction({Key? key, required this.name, required this.introduction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            introduction
          )
        ]
      );
  }
}