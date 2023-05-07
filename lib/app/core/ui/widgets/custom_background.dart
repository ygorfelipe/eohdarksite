// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomBackGround extends StatelessWidget {
  final double opacity;
  const CustomBackGround({
    Key? key,
    this.opacity = 0.50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/html-background.jpg',
            colorBlendMode: BlendMode.modulate,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
