import 'package:flutter/cupertino.dart';
import 'package:user_app/api/donate_repository.dart';
import 'package:user_app/models/donate_item.dart';

class DonateProvider with ChangeNotifier {
  final DonateRepository _donateRepository;
  late List<DonateOptionItem> items;
  bool loading = false;
  bool switchLoading = false;

  DonateProvider.injectRepository({required DonateRepository donateRepository})
      : _donateRepository = donateRepository;

  getImages(String userId) async {
    loading = true;
    items = await _donateRepository.getDonateOptionItems(userId);

    loading = false;
    notifyListeners();
  }

  Future<bool> updateDonateSelected(bool changedValue) {
    return _donateRepository.updateDonateSelected(changedValue);
  }
}
