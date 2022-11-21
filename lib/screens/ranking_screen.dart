import 'package:flutter/material.dart';

import '../widgets/switch/switch_common_donate_button.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({Key? key}) : super(key: key);

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
            icon: const Icon(Icons.emoji_events),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.emoji_events),
          ),
        ],
      ),
    );
  }
}
