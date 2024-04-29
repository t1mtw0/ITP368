import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  final _future = supabase
    .from('posts').select('*');

  @override
  Widget build(BuildContext build) {
    return FutureBuilder(future: _future, builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final posts = snapshot.data!;
        return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: posts.length,
          itemBuilder: ((context, index) {
            final post = posts[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ListTile(
                title: Text(post['title'], style: Theme.of(context).textTheme.displayLarge),
                subtitle: Text(post['content'], style: Theme.of(context).textTheme.displayMedium),
                tileColor: Theme.of(context).colorScheme.secondary,
              )
            );
          }),
        );
      }
    );
  }
}
