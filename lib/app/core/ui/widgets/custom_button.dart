// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? color;
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
    this.fontSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
