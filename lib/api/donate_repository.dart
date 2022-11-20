import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_app/models/donate_item.dart';

class DonateRepository {
  final donateClient = http.Client();

  Future<List<DonateOptionItem>> getDonateOptionItems() async {
    const url = 'http://localhost:3000/users/donate/0';
    final response = await donateClient.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('GET donate info fail!');
    }
    List<dynamic> items = jsonDecode(response.body);
    print(items);

    return List<DonateOptionItem>.from(
        items.map((item) => DonateOptionItem.fromJson(item)));

    // return DonateOptionItem.fromJson();
  }
}
