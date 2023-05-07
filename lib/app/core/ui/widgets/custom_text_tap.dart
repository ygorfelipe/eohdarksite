import 'package:flutter/material.dart';

class CustomTextTap extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final double? fontSize;
  final Color? color;
  const CustomTextTap({
    Key? key,
    required this.onPressed,
    required this.label,
    this.fontSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
