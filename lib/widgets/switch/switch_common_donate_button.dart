import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/user_provider.dart';

class SwitchCommonDonateButton extends StatelessWidget {
  const SwitchCommonDonateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return FloatingActionButton(
      onPressed: userProvider.changeNavbar,
      child: const Icon(Icons.compare_arrows),
    );
  }
}
