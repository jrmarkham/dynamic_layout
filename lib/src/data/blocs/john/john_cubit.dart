
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'john_state.dart';

class JohnCubit extends Cubit<JohnState> {
  JohnCubit() : super(JohnInitial());
}
