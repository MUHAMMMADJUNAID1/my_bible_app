import 'package:flutter/material.dart';

class CustomFont1 extends StatelessWidget {
  const CustomFont1({
    super.key,
    required this.text,
    this.fontSize = 11,
    this.fontColor = Colors.black,
    this.fontWeight = FontWeight.normal,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
      ),
    );
  }
}
