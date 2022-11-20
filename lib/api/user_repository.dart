import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_app/models/user.dart';

class UserRepository {
  final userClient = http.Client();

  Future<User> requestMe() async {
    const url = 'http://localhost:3000/users/0';
    final response = await userClient.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('GET User info fail!');
    }

    return Future<User>.delayed(const Duration(seconds: 2), () {
      print('return user done');
      return User.fromJson(jsonDecode(response.body));
    });
  }
}
