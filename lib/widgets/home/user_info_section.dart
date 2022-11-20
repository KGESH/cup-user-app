import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UserInfoSection extends StatelessWidget {
  final int echoPoint;
  final int donateExp;
  final int donateLevel;
  final double expPercent;

  String _formatPoint(int echoPoint) {
    var pointFormat = NumberFormat('###,###,###,###');
    return pointFormat.format(echoPoint);
  }

  const UserInfoSection({
    Key? key,
    required this.echoPoint,
    required this.donateExp,
    required this.donateLevel,
    required this.expPercent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  child: const Icon(
                    Icons.paid_outlined,
                    color: Colors.green,
                    size: 28,
                  ),
                ),
                const Text('에코 포인트',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                '${_formatPoint(echoPoint)} P >',
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w600,
                ),
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
                      style: TextStyle(fontSize: 24),
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
                  style: const TextStyle(fontSize: 12),
                ),
                progressColor: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
