import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final int bottomNavBarIndex;
  final Function(int) onItemTapped;

  const BottomNavbar({
    Key? key,
    required this.bottomNavBarIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.purple,
      selectedItemColor: Colors.deepPurpleAccent,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      unselectedItemColor: Colors.black54.withOpacity(0.5),
      currentIndex: bottomNavBarIndex,
      onTap: onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'DONATE',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'MAP',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'SHOP',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'MY',
        ),
      ],
    );
  }
}
