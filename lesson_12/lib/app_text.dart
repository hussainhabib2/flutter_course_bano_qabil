import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(this.text,{this.fontSize, this.fontWeight,this.color,Key? key}) : super(key: key);
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.white,
        fontSize: fontSize ?? 20,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
