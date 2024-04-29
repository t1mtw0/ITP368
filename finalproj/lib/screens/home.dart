import 'package:finalproj/widgets/posts.dart';
import 'package:finalproj/widgets/post_form.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Home extends StatelessWidget {
  final User? user;

  const Home({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ITP368 Final Project')),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints( 
            maxWidth: 600,
          ),
          child: Column(
            children: [
              PostForm(user: user),
              const Posts(),
            ]
          ),
        )
      )
    );
  }
}
