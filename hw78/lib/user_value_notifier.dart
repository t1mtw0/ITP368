import 'package:flutter/material.dart';
import 'package:hw78/user_dependency.dart';
import 'package:hw78/user_model.dart';
import 'package:hw78/user_state.dart';

class UserValueNotifier extends ValueNotifier<UserState> {
  final UserDependency dependency;

  UserValueNotifier({required int id, required this.dependency})
      : super(UserStateLoading(id: id));

  Future<void> load() async {
    if (value is UserStateLoaded) {
      return;
    }
    final userId = value.id;
    User? user = await dependency.getUser(userId);
    if (user == null) {
      value = UserStateError(id: userId);
      return;
    }
    value = UserStateLoaded(
        id: user.id,
        firstName: user.firstName,
        lastName: user.lastName,
        email: user.email,
        avatar: user.avatar,
    );
  }
}
