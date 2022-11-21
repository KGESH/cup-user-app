import 'package:flutter/material.dart';

import '../widgets/switch/switch_common_donate_button.dart';

class CommonScreen extends StatelessWidget {
  const CommonScreen({Key? key}) : super(key: key);

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
            icon: const Icon(Icons.airline_seat_recline_normal),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.airline_seat_recline_normal),
          ),
        ],
      ),
    );
  }
}
