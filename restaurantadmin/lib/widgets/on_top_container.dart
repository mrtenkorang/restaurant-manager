import 'package:flutter/material.dart';
import 'package:youeat/widgets/texts/small_text.dart';

class OnTopContainer extends StatelessWidget {
  final String text;
  final Color? color;
  final double size;
  const OnTopContainer(
      {super.key, required this.text, this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Center(
        child: AppSmallText(
          text: text,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
