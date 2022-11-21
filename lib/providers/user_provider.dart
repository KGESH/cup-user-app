import 'package:flutter/cupertino.dart';
import '../api/user_repository.dart';
import '../models/user.dart';

class UserProvider with ChangeNotifier {
  final UserRepository _userRepository;
  bool loading = false;
  late User _user;
  User get user => _user;
  bool _isCommonScreenMode = true;
  bool get isCommonScreenMode => _isCommonScreenMode;

  changeNavbar() {
    _isCommonScreenMode = !isCommonScreenMode;
    notifyListeners();
  }

  UserProvider.injectRepository({required UserRepository userRepository})
      : _userRepository = userRepository;

  Future<User> getUser(String userId) async {
    loading = true;
    _user = await _userRepository.requestMe(userId);

    loading = false;
    notifyListeners();

    return user;
  }
}
