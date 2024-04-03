import 'package:flutter/material.dart';
import 'package:hw_4/profile.dart';

class ProfileValueNotifier extends ValueNotifier<Profile> {
  ProfileValueNotifier() : super(Profile(firstName: '', lastName: '', imageUrl: ''));

  void update({String? firstName, String? lastName, String? imageUrl}) {
    if (firstName != null) {
      value.firstName = firstName;
      notifyListeners();
    }
    if (lastName != null) {
      value.lastName = lastName;
      notifyListeners();
    }
    if (imageUrl != null) {
      value.imageUrl = imageUrl;
      notifyListeners();
    }
  }
}