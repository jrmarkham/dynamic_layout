import 'package:flutter/material.dart';

import '../../globals.dart';
import '../widgets/buttons/core_buttons.dart';
import '../widgets/color_bar/color_bar.dart';
import 'scaffolds/core_scaffold.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreScaffold(
      body: Column(
        children: [
          SizedBox(height: deviceType.getCorePadding()),
          const Center(child: Text('Screen Two')),
          Center(child: Text(deviceType.name)),
          SizedBox(height: deviceType.getCorePadding()),
          const ColorBar(startColor: BaseColor.yellow),
          // const TestViewButtons(),
          SizedBox(height: deviceType.getCorePadding()),
        ],
      ),
    );
  }
}
