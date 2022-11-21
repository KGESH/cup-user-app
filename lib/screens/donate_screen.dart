import 'package:flutter/material.dart';

import 'package:user_app/widgets/switch/switch_common_donate_button.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SwitchCommonDonateButton()],
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
