import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  SampleBloc() : super(SampleInitial()) {
    on<SampleEventCallOne>((event, emit) {

      emit(SampleStateCallOne());

    });


    on<SampleEventCallTwo>((event, emit) {

      emit(SampleStateCallTwo());

    });


    on<SampleEventCallThree>((event, emit) {

      emit(SampleStateCallThree());

    });
  }

  sampleCallOne() => add(SampleEventCallOne());
  sampleCallTwo() => add(SampleEventCallTwo());
  sampleCallThree() => add(SampleEventCallThree());
}
