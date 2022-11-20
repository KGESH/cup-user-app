import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: 300,
        height: 300,
        child: const Icon(
          Icons.dangerous,
          size: 150,
        ),
      ),
    );
  }
}
