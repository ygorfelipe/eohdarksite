import 'package:flutter/cupertino.dart';

extension SizeExtensions on BuildContext {
  //* padrao 100% da tela
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  //* para trabalhar com a % da tela
  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}
