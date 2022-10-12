import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../globals.dart';


enum Nav {home, one, two}

class NavState {
  final Nav nav;
  final BaseColor navColor;
  const NavState ({required this.nav, required this.navColor});

  const NavState.init()
      : nav = Nav.home,
        navColor = BaseColor.white;

  NavState copyWith({Nav? updateNav, BaseColor? updateNavColor}) =>NavState(
    nav:  updateNav ?? nav, navColor: updateNavColor ?? navColor

  );

}

class NavCubit extends Cubit<NavState> {
  NavCubit() : super(const NavState.init());
  setNav(Nav updateNav) => emit(state.copyWith(updateNav: updateNav));
  setColor(BaseColor updateColor) => emit(state.copyWith(updateNavColor: updateColor));
}
