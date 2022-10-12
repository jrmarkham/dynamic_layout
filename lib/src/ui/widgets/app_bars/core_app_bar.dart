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
    NavCubit navCubit = BlocProvider.of<NavCubit>(context);
    void navCall(Nav nav) => navCubit.setNav(nav);

    return BlocBuilder<NavCubit, NavState>(
      bloc: navCubit,
      builder: (BuildContext context, NavState state) {
        return AppBar(
          title: Text(state.nav == Nav.home
              ? 'Hello Dan'
              : state.nav == Nav.one
                  ? 'Hey Tonya'
                  : 'Yo John'),
          backgroundColor: state.navColor.getContrastColor(),
          foregroundColor: state.navColor.getColor(),
          // shadowColor: state.navColor.getShadowColor(),
          actions: [
            CoreButton(
              label: 'Home',
              color: state.navColor,
              size: ButtonSize.small,
              callback: () => navCall(Nav.home),
            ),
            const SizedBox(width: 10.0),
            CoreButton(
              label: 'One',
              color: state.navColor,
              size: ButtonSize.small,
              callback: () => navCall(Nav.one),
            ),
            const SizedBox(width: 10.0),
            CoreButton(
              label: 'Two',
              color: state.navColor,
              size: ButtonSize.small,
              callback: () => navCall(Nav.two),
            ),
          ],
        );
      },
    );
  }
}
