import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.location_on),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.location_on),
          ),
        ],
      ),
    );
  }
}
