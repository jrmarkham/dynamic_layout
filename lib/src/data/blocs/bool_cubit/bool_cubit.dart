import 'package:flutter_bloc/flutter_bloc.dart';




class BoolCubit extends Cubit<bool> {
  BoolCubit(bool initBool) : super(initBool);
  set(bool setBool) => emit(setBool);
  toggle() => emit(!state);
}
