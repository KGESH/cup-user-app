import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
