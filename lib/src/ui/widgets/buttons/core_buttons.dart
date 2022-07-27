import 'package:dynamic_layout/src/ui/widgets/buttons/bool_button.dart';
import 'package:flutter/material.dart';

import '../../../globals.dart';
// Buttons just for an example

class CoreButton extends StatelessWidget {
  final ButtonSize size;
  final VoidCallback? callback;
  final String? label;
  final BaseColor color;

  const CoreButton(
      {required this.size, this.label, this.color = BaseColor.blue, this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback ?? () => debugPrint('Core Button'),
      child: Container(
        color: color.getColor(),
        width: size.getWidth(),
        height: size.getHeight(),
        child: Center(
          child: Text(
            label ?? 'Core Button',
            style: TextStyle(color: color.getContrastColor()),
          ),
        ),
      ),
    );
  }
}


// test viewer --
// add to lib/feature_epg/views/epg_tab.dart
// in _myListView under the ListView.builder
// if(index == 0) {
//   return TestViewButtons();
// }

// TEST Button Stack
class TestViewButtons extends StatelessWidget {
  const TestViewButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text('Bool test button'),
          const BoolButton(),
          SizedBox(height: deviceType.getEdgePadding()),
          const Text('Three mediums buttons'),
          const CoreButton(
            size: ButtonSize.medium,
          ),
          const CoreButton(
            color: BaseColor.red,
            label: 'Medium Long',
            size: ButtonSize.mediumLong,
          ),
          const CoreButton(
            label: 'Medium Short',
            color: BaseColor.green,
            size: ButtonSize.mediumShort,
          ),
        ],
      ),
    );
  }
}
