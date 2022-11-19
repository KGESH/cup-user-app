import 'package:flutter/cupertino.dart';
import '../api/user_client.dart';
import '../models/user.dart';

class UserProvider with ChangeNotifier {
  final UserRepository _userRepository;
  bool loading = false;
  late User _user;
  User get user => _user;

  UserProvider.injectRepository({required UserRepository userClient})
      : _userRepository = userClient;

  getUser() async {
    loading = true;
    _user = await _userRepository.requestMe();

    loading = false;
    notifyListeners();
  }
}
