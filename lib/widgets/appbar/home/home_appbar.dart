import 'package:flutter/material.dart';

import '../../../models/user.dart';
import '../../home/user_info_section.dart';
import 'home_title.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final User user;

  const HomeAppBar({super.key, required this.user});
  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: preferredSize.height,
      flexibleSpace: SafeArea(
        child: Container(
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
        ),
      ),
    );
  }
}
