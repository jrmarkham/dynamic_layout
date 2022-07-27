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
          BlocListener<NavCubit, Nav>(
            listener: (BuildContext context, Nav navState) {
              debugPrint('nav state $navState');
            }
          ),
          BlocListener<BoolCubit, bool>(
              listener: (BuildContext context, bool boolState) {
                debugPrint('bool state $boolState');
              }
          )
        ],
      child: BlocBuilder<NavCubit, Nav>(
          builder: (BuildContext context, Nav navState) {
            return Navigator(
              pages: [
                const MaterialPage(child: Home()),
                const MaterialPage(child: ScreenOne()),
                const MaterialPage(child: ScreenTwo()),
                if(navState == Nav.home) const MaterialPage(child: Home()),
                if(navState == Nav.altOne) const MaterialPage(child: ScreenOne()),
                if(navState == Nav.altTwo) const MaterialPage(child: ScreenTwo()),
              ],
              onPopPage: (route, result) {
                return route.didPop(result);
              },
            );
          }),
    );
  }
}