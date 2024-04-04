import 'package:hw78/user_model.dart';

abstract class UserDependency {
  Future<User?> getUser(int id);
}
