
import 'package:eohdarksystem/app/core/ui/helpers/responsive.dart';
import 'package:eohdarksystem/app/core/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomCopyRight extends StatelessWidget {
  const CustomCopyRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomText(
            label: '® eohdarksystem – Todos os direitos reservados',
            fontSize: (Responsive.isMobile(context) ? 10.0 : 12.0),
            color: Colors.white70,
          ),
          CustomText(
            label: 'v1.3.1',
            fontSize: (Responsive.isMobile(context) ? 10.0 : 12.0),
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
