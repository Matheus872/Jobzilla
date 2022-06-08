import 'package:basearch/src/features/auth/domain/repository/sign_up_interface.dart';
import '../../domain/model/user.dart';
import 'package:dio/dio.dart';

import '../dto/request/user_dto.dart';

class SignUpRepository implements ISignUp {
  @override
  Future<User> signUp(User user) async {
    final dto = UserDto.fromDomain(user);
    print(user.username);
    print(user.password);
    final response = await Dio().post(
      'http://ol0ll.mocklab.io/signup',
      data: dto.toJson(),
    );
    print(response);
    if (response.statusCode == 201) {
      final token = response.headers.value('Authorization');
      final domain = User(user.username, null, token: token);
      return Future.value(domain);
    } else {
      throw Exception("Erro ao criar o usuário");
    }
  }
}
