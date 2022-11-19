import 'package:flutter/material.dart';

class HomeAppbarTitle extends StatelessWidget {
  final String badge;
  final String name;

  const HomeAppbarTitle({Key? key, required this.badge, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          badge,
          style: TextStyle(fontSize: 48),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 32),
        )
      ],
    );
  }
}
