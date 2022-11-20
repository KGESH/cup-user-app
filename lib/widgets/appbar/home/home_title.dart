import 'package:flutter/material.dart';

class HomeAppBarTitle extends StatelessWidget {
  final String badge;
  final String name;

  const HomeAppBarTitle({Key? key, required this.badge, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: Text(
              badge,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
