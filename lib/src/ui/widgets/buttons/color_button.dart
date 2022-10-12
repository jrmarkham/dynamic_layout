import 'package:dynamic_layout/src/ui/widgets/buttons/bool_button.dart';
import 'package:flutter/material.dart';

import '../../../globals.dart';
// Buttons just for an example

class ColorButton extends StatelessWidget {
  final VoidCallback? callback;
  final BaseColor color;

  const ColorButton(
      {required this.color, this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback ?? () => debugPrint('Core Button'),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: color.getContrastColor(), width: 2.0),
          color: color.getColor()
        ),
        width: 25.0,
        height: 25.0,

      ),
    );
  }
}
