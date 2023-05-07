//* classe padrao singleton

import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  //* metodo static
  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFFFFFFFF);
  Color get secondary => const Color(0XFFFFFFFF);
}

//* acessando as cores pelo builderContext
//* criando uma extensao

extension ColorsAppExcetions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
