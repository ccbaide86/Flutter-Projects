import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class PeticionesProvider {
  Future<void> authenticateUser(String username, String password) async {
  final url = Uri.parse('https://fakestoreapi.com/auth/login');
  final response = await http.post(
    url,
    body: {
      'username': username,
      'password': password,
    },
  );

  if (response.statusCode == 200) {
    final token = response.body;
    
    // Guardar el token en las preferencias de usuario
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
  } else {
    throw Exception('Failed to authenticate');
  }
}

}