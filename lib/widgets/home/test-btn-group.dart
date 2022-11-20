import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class ExampleButtons extends StatefulWidget {
  @override
  State<ExampleButtons> createState() => _ExampleButtonsState();
}

class _ExampleButtonsState extends State<ExampleButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BarcodeWidget(
          margin: const EdgeInsets.all(15),
          data: "https://www.naver.com",
          barcode: Barcode.qrCode(),
          // height: 200,
        ),
        IconButton(
          onPressed: () => setState(() {}),
          icon: Icon(Icons.add),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.remove),
        ),
        // Text(generated),
      ],
    );
  }
}
