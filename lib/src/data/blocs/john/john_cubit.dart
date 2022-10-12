import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'john_state.dart';

class JohnCubit extends Cubit<JohnState> {
  JohnCubit() : super(JohnInitial());
}
