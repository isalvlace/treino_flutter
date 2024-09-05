import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

class AuthService {
  Future<bool> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('http://xxx.xxx.x.xxx:3000/signin'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      ).timeout(const Duration(seconds: 10));

      logger.i('Response status: ${response.statusCode}');
      logger.i('Response body: ${response.body}');
      
      final Map<String, dynamic> data = jsonDecode(response.body);

      data['success'] = response.statusCode == 200;

      if (data['success'] == true) {
        logger.i('Login bem-sucedido: $data');
        return true;
      } else {
        logger.e('Erro no login. Status: ${response.statusCode}, Body: $data');
        return false;
      }
    } catch (e, stacktrace) {
      logger.e('Error occurred: $e');
      logger.e('Stacktrace: $stacktrace');

      return false;
    }
  }
}