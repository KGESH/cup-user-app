import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/donate_provider.dart';
import 'loading_screen.dart';
import 'route.dart';
import '../providers/user_provider.dart';
import '../widgets/bottom_navbar/bottom_navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomNavBarIndex = 0;
  int get bottomNavBarIndex => _bottomNavBarIndex;

  @override
  void initState() {
    super.initState();
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    userProvider.getUser();
    final donateProvider = Provider.of<DonateProvider>(context, listen: false);
    donateProvider.getImages();
  }

  void _onBottomNavbarItemTapped(int index) {
    setState(() {
      _bottomNavBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    if (userProvider.loading) {
      return const LoadingScreen();
    }

    return Scaffold(
      body: SafeArea(
        child: screensRoute.elementAt(_bottomNavBarIndex),
      ),
      bottomNavigationBar: BottomNavbar(
        bottomNavBarIndex: bottomNavBarIndex,
        onItemTapped: _onBottomNavbarItemTapped,
      ),
    );
  }
}
