import 'package:flutter_bloc/flutter_bloc.dart';


enum Nav {home, altOne, altTwo, altThree, altFour, altFive}

class NavCubit extends Cubit<Nav> {
  NavCubit() : super(Nav.home);
  setNav(Nav nav) => emit(nav);

}
