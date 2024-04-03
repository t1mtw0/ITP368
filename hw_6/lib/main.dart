import 'package:flutter/material.dart';
import 'package:hw_6/contact.dart';
import 'package:hw_6/contact_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Contact List',
        home: ContactList(contacts: [
          Contact(
            name: 'Tom Brady',
            url: 'https://s3.amazonaws.com/zweb-s3.uploads/ez2/wp-content/uploads/2021/02/GettyImages-1300926323.jpg',
          ),
          Contact(
            name: 'Tom Cruise',
            url: 'https://upload.wikimedia.org/wikipedia/commons/7/71/Tom_Cruise_avp_2014_4.jpg',
          ),
          Contact(
            name: 'Tom Holland',
            url: 'https://image.tmdb.org/t/p/w500/l6zPRmg8NI7Y65G5GUqwvjxFdsx.jpg'
          ),
          Contact(
            name: 'Jennifer Lawrence',
            url: 'https://i0.web.de/image/882/36486882,pd=1,f=size-l/jennifer-lawrence.jpg'
          ),
          Contact(
            name: 'Emma Watson',
            url: 'https://farm3.static.flickr.com/2801/4321984062_95361915f9_o.jpg'
          )
        ]
      )
    );
  }
}
