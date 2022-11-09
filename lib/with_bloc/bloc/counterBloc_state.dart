class CounterState {
  int count;
  CounterState({required this.count});
}

class CounterCalculateState extends CounterState {
  CounterCalculateState() : super(count: 0);
}
