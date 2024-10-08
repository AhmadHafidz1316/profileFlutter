import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthController {
  Future<String> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('https://dummyjson.com/auth/login'), // Ganti URL dengan URL API-mu
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data["accessToken"]; 
    } else {
      throw Exception('Login failed: ${response.body}');
    }
  }
}
