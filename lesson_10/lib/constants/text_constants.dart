import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HussainText extends StatelessWidget {
  const HussainText(this.text,{this.fontSize, this.color, this.weight, Key? key}) : super(key: key);
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        color: color ??  Colors.white,
        fontSize: fontSize ?? 15,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}
