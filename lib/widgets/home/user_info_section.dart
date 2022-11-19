import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UserInfoSection extends StatelessWidget {
  final int echoPoint;
  final int donateExp;
  final int donateLevel;
  final double expPercent;

  const UserInfoSection({
    Key? key,
    required this.echoPoint,
    required this.donateExp,
    required this.donateLevel,
    required this.expPercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('에코 포인트', style: TextStyle(fontSize: 18)),
              TextButton(
                onPressed: () {},
                child: Text(
                  '$echoPoint P >',
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black54,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: const Text(
                        '기부 레벨',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text(
                      '$donateLevel LV',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: LinearPercentIndicator(
                  lineHeight: 14,
                  percent: expPercent,
                  center: Text(
                    '${(expPercent * 100).toStringAsFixed(2)}%',
                    style: TextStyle(fontSize: 12),
                  ),
                  progressColor: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
