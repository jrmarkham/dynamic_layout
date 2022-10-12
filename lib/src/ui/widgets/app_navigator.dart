import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../data/blocs/bool_cubit/bool_cubit.dart';
import '../../data/blocs/nav_cubit/nav_cubit.dart';
import '../../globals/numbers.dart';
import '../screens/home_screen.dart';
import '../screens/screen_one.dart';
import '../screens/screen_two.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('AppNavigator Build!!!');
    initializeDeviceDimensions(MediaQuery.of(context).size);
    return MultiBlocListener(
        listeners: [
          BlocListener<NavCubit, NavState>(
            listener: (BuildContext context, NavState navState) {
              debugPrint('nav state $navState');
            }
          ),
          BlocListener<BoolCubit, bool>(
              listener: (BuildContext context, bool boolState) {
                debugPrint('bool state $boolState');
              }
          )
        ],
      child: BlocBuilder<NavCubit, NavState>(
          builder: (BuildContext context, NavState navState) {
            return Navigator(
              pages: [
                const MaterialPage(child: Home()),
                const MaterialPage(child: ScreenOne()),
                const MaterialPage(child: ScreenTwo()),
                if(navState.nav == Nav.home) const MaterialPage(child: Home()),
                if(navState.nav == Nav.one) const MaterialPage(child: ScreenOne()),
                if(navState.nav == Nav.two) const MaterialPage(child: ScreenTwo()),
              ],
              onPopPage: (route, result) {
                return route.didPop(result);
              },
            );
          }),
    );
  }
}