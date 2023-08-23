import 'package:flutter/material.dart';
import 'package:youeat/widgets/texts/big_text.dart';
import 'package:youeat/widgets/texts/small_text.dart';

class StatContainer extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final String day;
  final String number;
  final String name;
  final double size;
  const StatContainer({
    super.key,
    this.color = Colors.black,
    required this.day,
    required this.number,
    required this.name,
    this.textColor = Colors.white,
    this.size = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSmallText(
              text: day,
              color: textColor,
            ),
            SizedBox(
              height: 10,
            ),
            BigText(
              text: number,
              textColor: textColor,
              bigTextSize: size,
            ),
            AppSmallText(
              text: name,
              color: textColor,
            )
          ],
        ),
      ),
    );
  }
}
