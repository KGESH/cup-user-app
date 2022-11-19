import 'package:flutter/material.dart';

import '../../../models/user.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  User user =
      User(name: '지성현', donateLevel: 10, donateExp: 1000, echoPoint: 2500);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
