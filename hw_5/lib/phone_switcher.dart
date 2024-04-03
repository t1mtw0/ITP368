import 'package:flutter/material.dart';
import 'package:hw_5/phone_state_notifier.dart';

enum PhoneStates {
  iOS,
  android,
}

class PhoneSwitcher extends StatefulWidget {
  const PhoneSwitcher({super.key});

  @override
  State<PhoneSwitcher> createState() => _PhoneSwitcherState();
}

class _PhoneSwitcherState extends State<PhoneSwitcher> {
  final _phoneStateNotifier = PhoneStateNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            AnimatedContainer(
                width: _phoneStateNotifier.value == PhoneStates.android
                    ? 300
                    : 400,
                height: _phoneStateNotifier.value == PhoneStates.android
                    ? 700
                    : 850,
                decoration: BoxDecoration(
                  color: _phoneStateNotifier.value == PhoneStates.android
                      ? Colors.green
                      : Colors.black,
                  borderRadius: _phoneStateNotifier.value == PhoneStates.android
                      ? BorderRadius.circular(120)
                      : BorderRadius.circular(50),
                ),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.fastOutSlowIn,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        width: _phoneStateNotifier.value == PhoneStates.android
                            ? 120
                            : 100,
                        height: _phoneStateNotifier.value == PhoneStates.android
                            ? 100
                            : 40,
                        decoration: BoxDecoration(
                          color:
                              _phoneStateNotifier.value == PhoneStates.android
                                  ? Colors.greenAccent
                                  : Colors.grey,
                          borderRadius:
                              _phoneStateNotifier.value == PhoneStates.android
                                  ? BorderRadius.circular(100)
                                  : BorderRadius.circular(30),
                        ),
                        duration: const Duration(milliseconds: 1000),
                      ),
                      AnimatedContainer(
                          width: 100,
                          height: 350,
                          duration: const Duration(milliseconds: 1000),
                          child: Image.network(_phoneStateNotifier.value ==
                                  PhoneStates.android
                              ? 'https://i1.wp.com/www.titanui.com/wp-content/uploads/2013/06/15/Set-Of-Vector-Android-Logos.jpg'
                              : 'http://4.bp.blogspot.com/-wPJJwaclzrw/UBg1mb5ePWI/AAAAAAAAA2M/IdwYprrTLwM/s1600/apple_logo_by_eragondiefehlersuche-d2yhe6d.jpg')),
                      AnimatedContainer(
                        width: _phoneStateNotifier.value == PhoneStates.android
                            ? 100
                            : 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        duration: const Duration(milliseconds: 1000),
                      ),
                    ])),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _phoneStateNotifier.update(state: PhoneStates.android);
                });
              },
              child: const Text("Android"),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: () {
                setState(() {
                  _phoneStateNotifier.update(state: PhoneStates.iOS);
                });
              },
              child: const Text("iOS"),
            )
          ]))
    ]));
  }
}
