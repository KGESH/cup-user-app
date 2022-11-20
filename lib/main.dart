import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/api/user_repository.dart';
import 'package:user_app/providers/donate_provider.dart';
import 'package:user_app/providers/user_provider.dart';

import 'package:user_app/screens/main_screen.dart';

import 'api/donate_repository.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (BuildContext ctx) => UserProvider.injectRepository(
                  userRepository: UserRepository())),
          ChangeNotifierProvider(
              create: (BuildContext ctx) => DonateProvider.injectRepository(
                  donateRepository: DonateRepository())),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
