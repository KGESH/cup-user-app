import 'package:flutter/material.dart';

import '../widgets/switch/switch_common_donate_button.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

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
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
