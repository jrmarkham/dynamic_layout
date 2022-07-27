import 'package:flutter/material.dart';


import '../widgets/buttons/core_buttons.dart';
import 'scaffolds/core_scaffold.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreScaffold(
            body: Column(
        children: const [

          Text('Home'),


          TestViewButtons(),

        ],
      ),
    );
  }
}
