import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_app/models/user.dart';

class UserRepository {
  final userClient = http.Client();

  Future<User> requestMe() async {
    const url = 'http://localhost:3000/users';

    final res = await userClient.get(Uri.parse(url));
    if (res.statusCode != 200) {
      throw Exception('GET User info fail!');
    }

    return User.fromJson(jsonDecode(res.body));
  }
}
