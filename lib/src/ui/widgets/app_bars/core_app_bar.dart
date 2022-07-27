
// Default appbar for web

import 'package:dynamic_layout/src/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/blocs/nav_cubit/nav_cubit.dart';
import '../buttons/core_buttons.dart';

class CoreAppBar extends StatelessWidget {
  const CoreAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void _navCall (Nav nav)=> BlocProvider.of<NavCubit>(context).setNav(nav);

    return AppBar(
      title: const Text('App bar for web'),
      actions: [
        CoreButton(

          label: 'Home',
          color: BaseColor.red,
          size: ButtonSize.small,
          callback: () => _navCall(Nav.home),

        ),
        CoreButton(

          label: 'One',
          color: BaseColor.green,
          size: ButtonSize.small,
          callback: () => _navCall(Nav.one),

        ),
        CoreButton(

          label: 'Two',
          color: BaseColor.yellow,
          size: ButtonSize.small,
          callback: () => _navCall(Nav.two),

        ),


      ],
    );
  }
}
