import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_app/models/user.dart';

class UserRepository {
  final userClient = http.Client();

  Future<User> requestMe(String userId) async {
    final url = 'http://localhost:3000/users/$userId';
    final response = await userClient.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('GET User info fail!');
    }

    return User.fromJson(jsonDecode(response.body));
  }
}
