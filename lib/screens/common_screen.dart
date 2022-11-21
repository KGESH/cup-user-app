import 'package:flutter/material.dart';

import '../widgets/switch/switch_common_donate_button.dart';

class CommonScreen extends StatelessWidget {
  const CommonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const SwitchCommonDonateButton(),
    );
  }
}
