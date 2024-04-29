import 'package:finalproj/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://xclipkiikphedcwupsds.supabase.co',
    anonKey:
        '',
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ITP368 Final Project",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.purple,
          secondary: Colors.lightBlueAccent,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),

        ),
      ),
      home: const Login(),
    );
  }
}
