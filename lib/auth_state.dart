import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  @override
  String toString() => this.runtimeType.toString();
}

class AuthenticationUninitialized extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {}

class AuthenticationUnauthenticated extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}
