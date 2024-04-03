import 'package:flutter/material.dart';
import 'package:hw_4/profile.dart';
import 'package:hw_4/profile_value_notifier.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  final _profileValueNotifier = ProfileValueNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        title: const Text("Profile Settings"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<Profile>(
                valueListenable: _profileValueNotifier,
                builder: (context, value, _) {
                  return Image.network(value.imageUrl, width: 50, height: 50, errorBuilder: (BuildContext context, _, __) { return const SizedBox.shrink();
                  });
                }
              ),
              TextField(
                onChanged: (newName) { _profileValueNotifier.update(firstName: newName); },
                decoration: const InputDecoration(
                  icon: Icon(Icons.add_box),
                  border: UnderlineInputBorder(),
                  labelText: "First Name",
                ),
              ),
              TextField(
                onChanged: (newName) { _profileValueNotifier.update(lastName: newName); },
                decoration: const InputDecoration(
                  icon: Icon(Icons.add_box),
                  border: UnderlineInputBorder(),
                  labelText: "Last Name",
                ),
              ),
              TextField(
                onChanged: (newURL) { _profileValueNotifier.update(imageUrl: newURL); },
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_box_sharp),
                  border: UnderlineInputBorder(),
                  labelText: "Image URL",
                ),
              ),
              ValueListenableBuilder<Profile>(
                valueListenable: _profileValueNotifier,
                builder: (context, value, _) {
                  if (value.firstName == '' || value.lastName == '') {
                    return const Text('You do not have a full name!');
                  }
                  return Text('Hello, I am ${value.firstName} ${value.lastName}');
                }
              )
            ],
          ),
        )
      )
    );
  }
}