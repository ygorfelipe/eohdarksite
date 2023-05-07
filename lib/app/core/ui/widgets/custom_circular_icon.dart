import 'package:flutter/material.dart';

class CustomCircularIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final String imageAsset;
  final double borderRadius;
  final Color? backgroundColor;
  const CustomCircularIcon({
    Key? key,
    required this.onPressed,
    required this.imageAsset,
    required this.borderRadius,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: ImageIcon(AssetImage(imageAsset)),
      ),
    );
  }
}