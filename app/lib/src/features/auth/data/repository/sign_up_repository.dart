import 'package:basearch/src/features/auth/domain/repository/sign_up_interface.dart';
import '../../domain/model/user.dart';
import 'package:dio/dio.dart';

import '../dto/request/user_dto.dart';

class SignUpRepository implements ISignUp {
  @override
  Future<User> signUp(User user) async {
    final dto = UserDto.fromDomain(user);
    print(user.username);
    print(user.email);
    print(user.password);
    final response = await Dio().post(
      'http://10.0.0.102:8080/api/v1/auth/signup',
      data: dto.toJson(),
    );
    print(response);
    if (response.statusCode == 200) {
      final token = response.headers.value('Authorization');
      final domain = User(user.username, null, user.email, token: token);
      return Future.value(domain);
    } else {
      throw Exception("Erro ao criar o usuário");
    }
  }
}
