import 'package:my_app/errors_&_exceptions/http_exception.dart';
import 'package:my_app/utils/http.dart';

class UserService {
  final Http http;

  UserService({required this.http});

  Future<String> login(String email, String password) async {
    final response = await http.postJson(
      '/api/login',
      dados: {
        'email': email,
        'password': password,
      },
    );

    final String? token = response.data['token'];

    final String? error = response.data['error'];

    if (token != null) {
      return token;
    } else if (error != null) {
      throw HttpException(error);
    } else {
      throw const HttpException('Erro desconhecido');
    }
  }

  Future<void> logout() async {
    await http.postJson('/logout');
  }
}
