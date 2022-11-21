import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/screens/common_screen.dart';
import 'package:user_app/screens/shop_screen.dart';
import 'package:user_app/widgets/bottom_navbar/bottom_common_navbar.dart';

import '../providers/donate_provider.dart';
import 'loading_screen.dart';
import '../providers/user_provider.dart';
import '../widgets/bottom_navbar/bottom_donate_navbar.dart';
import 'donate_screen.dart';
import 'home_screen.dart';
import 'map_screen.dart';
import 'ranking_screen.dart';
import 'my_page.dart';

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
    final donateProvider = Provider.of<DonateProvider>(context, listen: false);
    /** Todo: Auth */
    userProvider.getUser('0').then((user) => donateProvider.getImages(user.id));
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

    List<Widget> screensRoute = <Widget>[
      const HomeScreen(),
      userProvider.isCommonScreenMode
          ? const CommonScreen()
          : const DonateScreen(),
      const MapScreen(),
      userProvider.isCommonScreenMode
          ? const ShopScreen()
          : const RankingScreen(),
      const MyPageScreen(),
    ];

    return Scaffold(
      body: SafeArea(
        child: screensRoute.elementAt(_bottomNavBarIndex),
      ),
      bottomNavigationBar: userProvider.isCommonScreenMode
          ? BottomCommonNavBar(
              bottomNavBarIndex: bottomNavBarIndex,
              onItemTapped: _onBottomNavbarItemTapped)
          : BottomDonateNavbar(
              bottomNavBarIndex: bottomNavBarIndex,
              onItemTapped: _onBottomNavbarItemTapped,
            ),
    );
  }
}
