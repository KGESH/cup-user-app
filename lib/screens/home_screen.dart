import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:user_app/providers/user_provider.dart';
import 'package:user_app/widgets/appbar/home/home_appbar.dart';
import 'package:user_app/widgets/home/donate_select_section.dart';
import 'package:user_app/widgets/loading/loading_section.dart';

import '../providers/donate_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final donateProvider = Provider.of<DonateProvider>(context);

    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeAppBar(user: userProvider.user),
          donateProvider.loading
              ? const LoadingSection()
              : DonateSelectSection(
                  items: donateProvider.items,
                ),
        ],
      ),
    );
  }
}
