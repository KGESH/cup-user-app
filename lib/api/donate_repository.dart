import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_app/models/donate_item.dart';

class DonateRepository {
  final donateClient = http.Client();

  Future<bool> updateDonateSelected(bool selected) async {
    /** Todo: impl update server state result */
    // const url = 'http://localhost:3000/users/donate';
    // final response = await donateClient.post(Uri.parse(url));
    // if (response.statusCode != 200) {
    //   throw Exception('POST update donate state fail!');
    // }

    // return response.body.updateResult

    return Future<bool>.delayed(const Duration(seconds: 1), () {
      return true;
    });
  }

  Future<List<DonateOptionItem>> getDonateOptionItems(String userId) async {
    final url = 'http://localhost:3000/users/$userId/donates';
    final response = await donateClient.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('GET donate info fail!');
    }

    List<dynamic> items = jsonDecode(response.body);
    return List<DonateOptionItem>.from(
      items.map((item) => DonateOptionItem.fromJson(item)),
    );
  }
}
