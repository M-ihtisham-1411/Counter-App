class CounterState {
  int counter;
  CounterState({required this.counter});
}

class initialState extends CounterState {
  initialState() : super(counter: 0);
}
