

import 'package:dynamic_layout/src/data/blocs/nav_cubit/nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoreBottomNavigationBar extends StatelessWidget {
  const CoreBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavCubit navCubit = BlocProvider.of<NavCubit>(context);
    return BottomNavigationBar(
      onTap: (int idx)=>navCubit.setNav(Nav.values[idx]),
        currentIndex: navCubit.state.nav.index,


        items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',


    ),
      BottomNavigationBarItem(
        icon: Icon(Icons.looks_one_sharp),
        label: 'Screen One',

      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.looks_two_sharp),
        label: 'Screen Two',

      )

    ]


    );
  }
}
