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

    final String token = response.data['token'];

    return token;
  }

  Future<void> logout() async {
    await http.postJson('/logout');
  }
}
