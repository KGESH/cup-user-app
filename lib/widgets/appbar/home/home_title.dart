import 'package:flutter/material.dart';

class HomeAppBarTitle extends StatelessWidget {
  final String badge;
  final String name;

  const HomeAppBarTitle({Key? key, required this.badge, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          badge,
          style: const TextStyle(fontSize: 32),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 28),
        ),
      ],
    );
  }
}
