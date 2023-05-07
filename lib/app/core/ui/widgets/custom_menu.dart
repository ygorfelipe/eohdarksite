import 'package:eohdarksystem/app/core/ui/widgets/custom_text_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double minWidth = 280;
    const double fontSize = (minWidth <= minWidth ? 12.0 : 8.0);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: (minWidth < minWidth ? 1 : 1),
        vertical: (minWidth < minWidth ? 1 : 1),
      ),
      child: SizedBox(
        height: 50,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextTap(
              onPressed: () => Modular.to.navigate('/home'),
              label: 'WELCOME',
              color: Colors.white,
              fontSize: fontSize,
            ),
            CustomTextTap(
              onPressed: () => Modular.to.navigate('/projects'),
              label: 'PROJECT',
              color: Colors.white,
              fontSize: fontSize,
            ),
            CustomTextTap(
              onPressed: () => Modular.to.navigate('/about'),
              label: 'ABOUT',
              color: Colors.white,
              fontSize: fontSize,
            ),
            // CustomTextTap(
            //   onPressed: () {},
            //   label: 'CONTACT',
            //   color: Colors.white,
            // ),
          ],
        ),
      ),
    );
  }
}
