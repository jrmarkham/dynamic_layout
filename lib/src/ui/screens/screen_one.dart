import 'package:flutter/material.dart';


import '../../globals.dart';
import '../widgets/buttons/core_buttons.dart';
import 'scaffolds/core_scaffold.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreScaffold(
      body: Column(
        children:  [
          SizedBox(height: deviceType.getCorePadding()),
          const Center(child: Text('Screen One')),
          Center(child: Text(deviceType.name)),
          SizedBox(height: deviceType.getCorePadding()),

          const TestViewButtons(),
          SizedBox(height: deviceType.getCorePadding()),
        ],
      ),
    );
  }
}
