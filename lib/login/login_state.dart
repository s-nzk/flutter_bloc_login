import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class LoginState extends Equatable {
  LoginState([List props = const []]) : super(props);

  @override
  String toString() => this.runtimeType.toString();
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final String error;
  LoginFailure({@required this.error}) : super([error]);
}
