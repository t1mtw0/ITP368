import 'package:flutter/material.dart';
import 'package:hw_6/contact.dart';

class ContactList extends StatefulWidget {
  final List<Contact> contacts;

  const ContactList({super.key, required this.contacts});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.contacts.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            color: Colors.black,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(widget.contacts[index].url, width: 80, height: 80),
                Padding(padding: const EdgeInsets.all(10), child: Text(widget.contacts[index].name, style: const TextStyle(color: Colors.white))),
              ])
          );
        }
      )
    );
  }
}
