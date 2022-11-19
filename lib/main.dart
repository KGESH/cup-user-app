import 'package:flutter/material.dart';

import 'package:user_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'MyApp', home: HomeScreen());
  }
}