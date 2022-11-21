import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/providers/donate_provider.dart';

class DonateOptionItemWidget extends StatefulWidget {
  final String optionName;
  final String imageUrl;
  bool selected;

  DonateOptionItemWidget({
    Key? key,
    required this.optionName,
    required this.imageUrl,
    required this.selected,
  }) : super(key: key);

  @override
  State<DonateOptionItemWidget> createState() => _DonateOptionItemWidgetState();
}

class _DonateOptionItemWidgetState extends State<DonateOptionItemWidget> {
  @override
  Widget build(BuildContext context) {
    final donateProvider = Provider.of<DonateProvider>(context);

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.optionName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Flexible(
                child: Switch(
                  value: widget.selected,
                  onChanged: (bool changed) async {
                    final bool successUpdateServerState =
                        await donateProvider.updateDonateSelected(changed);

                    if (successUpdateServerState) {
                      setState(() {
                        widget.selected = changed;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: Image.network(
              widget.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
