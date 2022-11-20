import 'package:flutter/material.dart';
import 'package:user_app/models/donate_item.dart';

class DonateSelectSection extends StatelessWidget {
  final List<DonateOptionItem> items;

  const DonateSelectSection({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (ctx, int index) => SizedBox(
            child: Image.network(
          items[index].imageUrl,
          fit: BoxFit.cover,
        )),
        //     .toList(),
      ),
    );
  }
}
