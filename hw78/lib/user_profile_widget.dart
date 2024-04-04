import 'package:flutter/material.dart';
import 'package:hw78/http_user_dependency.dart';
import 'package:hw78/user_state.dart';
import 'package:hw78/user_value_notifier.dart';

class UserProfileWidget extends StatefulWidget {
  final int id;

  const UserProfileWidget({super.key, required this.id});

  @override
  State<UserProfileWidget> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfileWidget> {
  late UserValueNotifier userValue;

  @override
  void initState() {
    userValue =
        UserValueNotifier(id: widget.id, dependency: HttpUserDependency());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ValueListenableBuilder(
          valueListenable: userValue,
          builder: (BuildContext context, UserState state, Widget? widget) {
            if (state is UserStateLoading) {
              return const Text('Press button to load');
            } else if (state is UserStateLoaded) {
              return Column(children: [
                Text('Hello, ${state.firstName}'),
                Text(state.email),
                Text(state.avatar),
              ]);
            } else {
              return const Text('An error occured');
            }
          }),
      Expanded(
          child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton.icon(
                onPressed: () async {
                  await userValue.load();
                },
                icon: const Icon(
                  Icons.download,
                  size: 64.0,
                ),
                label: const Text('Download'),
              )))
    ]));
  }
}
