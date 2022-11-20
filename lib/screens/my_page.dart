import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.account_circle_rounded),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.account_circle_rounded),
          ),
        ],
      ),
    );
  }
}
