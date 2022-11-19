import 'package:flutter/material.dart';

class ExampleButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
