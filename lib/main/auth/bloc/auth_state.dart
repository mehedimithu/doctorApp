import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pms_telemedicine_flutter/common/user/logged_user.dart';

@immutable
abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class Uninitialized extends AuthenticationState {
  @override
  String toString() => 'Uninitialized';

  @override
  List<Object> get props => [];
}

class Authenticated extends AuthenticationState {
  final LoggedUser user;

  const Authenticated(this.user);

  @override
  String toString() => 'Authenticated { user: $user }';

  @override
  List<Object> get props => [user];
}

class Unauthenticated extends AuthenticationState {
  @override
  String toString() => 'Unauthenticated';

  @override
  List<Object> get props => [];
}

class Unregistered extends AuthenticationState {
  @override
  String toString() => 'Unregistered';

  @override
  List<Object> get props => [];
}

class OnBoard extends AuthenticationState {
  @override
  String toString() => 'OnBoard';

  @override
  List<Object> get props => [];
}

