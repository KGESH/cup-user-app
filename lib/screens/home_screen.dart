import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:user_app/providers/user_provider.dart';
import 'package:user_app/screens/loading_screen.dart';
import 'package:user_app/widgets/appbar/home/home_appbar.dart';
import 'package:user_app/widgets/home/test-btn-group.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    userProvider.getUser();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return userProvider.loading
        ? const LoadingScreen()
        : Scaffold(
            appBar: HomeAppBar(user: userProvider.user),
            body: Column(
              children: [
                ExampleButtons(),
              ],
            ),
            // bottomNavigationBar: Bott,
          );
  }
}
