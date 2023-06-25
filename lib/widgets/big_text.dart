import 'package:flutter/material.dart';
import 'package:food_delivary/utils/dimantions.dart';

class BigText extends StatelessWidget {
  //..........Declear variable...........//
   Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: Dimensions.font20,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
