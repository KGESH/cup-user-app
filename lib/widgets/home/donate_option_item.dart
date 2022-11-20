import 'package:flutter/material.dart';

class DonateOptionItemWidget extends StatelessWidget {
  final String optionName;
  final String imageUrl;
  final bool selected;
  const DonateOptionItemWidget(
      {Key? key,
      required this.optionName,
      required this.imageUrl,
      required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              optionName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
