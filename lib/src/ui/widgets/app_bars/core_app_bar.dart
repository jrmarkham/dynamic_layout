
// Default appbar for web

import 'package:flutter/material.dart';

class CoreAppBar extends StatelessWidget {
  const CoreAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('App bar for web'),
    );
  }
}
