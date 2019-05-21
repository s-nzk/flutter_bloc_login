import 'package:bloc/bloc.dart';
import 'package:flutter_login/auth/bloc.dart';
import 'package:flutter_login/login/bloc.dart';
import 'package:flutter_login/repos/UserRepository.dart';
import 'package:meta/meta.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  })  : assert(userRepository != null),
        assert(authenticationBloc != null);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();
      try {
        final token = await userRepository.authenticate(
          username: event.username,
          password: event.password,
        );
        authenticationBloc.dispatch(LoggedIn(token: token));
        yield LoginInitial();
      } catch (_) {
        yield LoginFailure();
      }
    }
  }
}
