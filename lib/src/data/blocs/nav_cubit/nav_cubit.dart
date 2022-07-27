import 'package:flutter_bloc/flutter_bloc.dart';


enum Nav {home, one, two}

class NavCubit extends Cubit<Nav> {
  NavCubit() : super(Nav.home);
  setNav(Nav nav) => emit(nav);

}
