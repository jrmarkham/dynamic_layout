import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'dan_event.dart';
part 'dan_state.dart';

class DanBloc extends Bloc<DanEvent, DanState> {
  DanBloc() : super(DanInitial()) {
    on<DanEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
