import '../../domain/model/user.dart';
import '../../domain/repository/login_interface.dart';
import 'package:dio/dio.dart';

import '../dto/request/user_dto.dart';

class LoginRepository implements ILogin {
  @override
  Future<User> login(User user) async {
    final dto = UserDto.fromDomain(user);
    final response = await Dio().post(
      'https://jobzillaapp.herokuapp.com/api/v1/auth/signin',
      data: dto.toJson(),
    );
    print(response);
    if (response.statusCode == 200) {
      final token = response.headers.value('Authorization');
      final domain = User(user.username, null, user.email, token: token);
      return Future.value(domain);
    } else {
      throw Exception("Usuário ou Senha Inválidos!");
    }
  }
}
