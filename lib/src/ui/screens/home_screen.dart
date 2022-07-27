import 'package:dynamic_layout/src/globals.dart';
import 'package:flutter/material.dart';


import '../widgets/buttons/core_buttons.dart';
import 'scaffolds/core_scaffold.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreScaffold(
            body: Column(
            children:  [
          SizedBox(height: deviceType.getCorePadding()),
          const Center(child: Text('Home')),
              SizedBox(height: deviceType.getCorePadding()),

          const TestViewButtons(),
              SizedBox(height: deviceType.getCorePadding()),
        ],
      ),
    );
  }
}
