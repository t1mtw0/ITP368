import 'package:flutter/material.dart';
import 'package:hw_5/phone_switcher.dart';

class PhoneStateNotifier extends ValueNotifier<PhoneStates> {
  PhoneStateNotifier() : super(PhoneStates.iOS);

  void update({required PhoneStates state}) {
    value = state;
    notifyListeners();
  }
}