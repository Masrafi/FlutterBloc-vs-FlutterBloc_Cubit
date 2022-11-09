import 'package:counterbloc/with_bloc/bloc/counterBloc_event.dart';
import 'package:counterbloc/with_bloc/bloc/counterBloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterCalculateState()) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(count: state.count + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(CounterState(count: state.count - 1));
    });
  }
}
