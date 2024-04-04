abstract class UserState {
  final int id;

  UserState({required this.id});
}

class UserStateLoading extends UserState {
  UserStateLoading({required super.id});
}

class UserStateError extends UserState {
  UserStateError({required super.id});
}

class UserStateLoaded extends UserState {
  final String firstName;
  final String lastName;
  final String email;
  final String avatar;

  UserStateLoaded(
      {required super.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.avatar});
}
