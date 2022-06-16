import '../model/user.dart';

abstract class ISignUp {
  Future<User?> signUp(User user);
}
