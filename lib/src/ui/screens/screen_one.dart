import 'package:flutter/material.dart';


import 'scaffolds/core_scaffold.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreScaffold(
            body: Column(
        children: const [

          Text('ScreenOne')

        ],
      ),
    );
  }
}
