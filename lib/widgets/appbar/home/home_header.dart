import 'package:flutter/material.dart';

import '../../../models/user.dart';
import '../../home/user_info_section.dart';
import 'home_title.dart';

class HomeHeader extends StatelessWidget {
  final User user;

  const HomeHeader({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          HomeAppBarTitle(
            badge: user.badge,
            name: user.name,
          ),
          UserInfoSection(
            echoPoint: user.echoPoint,
            donateExp: user.donateExp,
            donateLevel: user.donateLevel,
            expPercent: 0.85,
          ),
        ],
      ),
    );
  }
}
