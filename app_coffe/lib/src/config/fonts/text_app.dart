import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextApp extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final Color? color;
  final FontStyle? fontStyle;

  const TextApp({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.textOverflow,
    this.color,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: GoogleFonts.montserrat(
        fontSize: fontSize, 
        fontWeight: fontWeight,
        color: color,
        fontStyle: fontStyle
      ),
    );
  }
}
