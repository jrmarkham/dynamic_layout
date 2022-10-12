import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../globals.dart';


class ColorCubit extends Cubit<BaseColor> {
  ColorCubit({BaseColor? initColor}) : super(initColor ?? BaseColor.blue);
  void updateColor(BaseColor newColor) => emit(newColor);
}
