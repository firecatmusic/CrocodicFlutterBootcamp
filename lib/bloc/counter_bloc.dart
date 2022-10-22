import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;

  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>((event, emit) {
      counter += event.multiply;
      emit(CurrentCounter(counter));
    });
  }
}
