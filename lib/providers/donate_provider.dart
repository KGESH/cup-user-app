import 'package:flutter/cupertino.dart';
import 'package:user_app/api/donate_repository.dart';
import 'package:user_app/models/donate_item.dart';

class DonateProvider with ChangeNotifier {
  final DonateRepository _donateRepository;
  late List<DonateOptionItem> items;
  bool loading = false;

  DonateProvider.injectRepository({required DonateRepository donateRepository})
      : _donateRepository = donateRepository;

  getImages() async {
    loading = true;
    items = await _donateRepository.getDonateOptionItems();

    loading = false;
    notifyListeners();
  }
}
