import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double? width;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final int maxlines;
  final String? fontFamily;
  final double? lineHeight;
  final double letterSpacing;

  const CustomText({
    super.key,
    required this.text,
    this.width,
    required this.fontSize,
    required this.color,
    required this.fontWeight,
    this.maxlines = 1,
    this.textAlign,
    this.fontFamily = "Poppins",
    this.lineHeight = 1.0,
    this.letterSpacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            fontSize: fontSize,
            // letterSpacing: -0.6,
            color: color,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            height: lineHeight,
            letterSpacing: letterSpacing),
      ),
    );
  }
}
