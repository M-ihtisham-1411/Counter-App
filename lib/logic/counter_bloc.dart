import 'package:counterapp/logic/counter_event.dart';
import 'package:counterapp/logic/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(initialState()) {
    on<Increment>(
        (event, emit) => emit(CounterState(counter: state.counter + 1)));
    on<Decrement>(
        (event, emit) => emit(CounterState(counter: state.counter - 1)));
    on<Reset>(
        (event, emit) => emit(CounterState(counter: state.counter * 0 + 0)));
  }
}
