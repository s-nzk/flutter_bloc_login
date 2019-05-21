import 'package:meta/meta.dart';

class UserRepository {
  Future<String> authenticate({
    @required String username,
    @required String password,
  }) async {
    await Future.delayed(Duration(seconds: 3));
    return 'token';
  }

  Future<void> deleteToken() async {
    await Future.delayed(Duration(seconds: 3));
  }

  Future<void> persistToken(String token) async {
    await Future.delayed(Duration(seconds: 3));
  }

  Future<bool> hasToken() async {
    await Future.delayed(Duration(seconds: 3));
    return false;
  }
}
