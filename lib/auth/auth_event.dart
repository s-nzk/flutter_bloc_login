import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AuthenticationEvent extends Equatable {
  AuthenticationEvent([List props = const []]) : super(props);

  @override
  String toString() => this.runtimeType.toString();
}

class AppStarted extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {
  final String token;
  LoggedIn({@required this.token}) : super([token]);

  @override
  String toString() {
    return "${super.toString()} { token: $token";
  }
}

class LoggedOut extends AuthenticationEvent {}
