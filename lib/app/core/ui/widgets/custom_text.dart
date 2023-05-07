import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  const CustomText({
    Key? key,
    required this.label,
    this.fontSize,
    this.color = Colors.white,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
