

import 'package:flutter/material.dart';

class CoreBottomNavigationBar extends StatelessWidget {
  const CoreBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.ac_unit),
      label: 'Sample 0',

    ),
      BottomNavigationBarItem(
        icon: Icon(Icons.accessibility),
        label: 'Sample 1',

      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.access_alarm),
        label: 'Sample 2',

      )

    ]


    );
  }
}
