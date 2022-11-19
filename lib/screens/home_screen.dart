import 'package:flutter/material.dart';
import 'package:user_app/widgets/appbar/home/home_title.dart';
import 'package:user_app/widgets/home/user_info_section.dart';

class HomeScreen extends StatelessWidget {
  final String _badge = '킹왕짱';
  final String _name = '지성현';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: HomeAppbarTitle(badge: _badge, name: _name)),
      body: UserInfoSection(
        echoPoint: 1234,
        donateExp: 5678,
        donateLevel: 12,
        expPercent: 0.99,
      ),
      // bottomNavigationBar: Bott,
    );
  }
}
