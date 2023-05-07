import 'package:flutter/material.dart';

class CustomCircleIconButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? radius;
  final VoidCallback onPressed;
  final double? iconSize;
  final String assetImage;
  const CustomCircleIconButton({
    Key? key,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    this.radius,
    required this.onPressed,
    this.iconSize,
    required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      radius: radius,
      child: IconButton(
        onPressed: onPressed,
        iconSize: iconSize,
        icon: ImageIcon(
          AssetImage(assetImage),
        ),
      ),
    );
  }
}
