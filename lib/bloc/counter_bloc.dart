import 'package:bloc/bloc.dart';

// Event
abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

// State
class CounterState {
  final int counter;

  const CounterState(this.counter);

  const CounterState.init() : counter = 0;
}

// Bloc
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState.init()) {
    on<IncrementCounterEvent>(onIncrement);
    on<DecrementCounterEvent>(onDecrement);
  }

  Future<void> onIncrement(
    CounterEvent event,
    Emitter<CounterState> emit,
  ) async {
    final int counterValue = state.counter;
    emit(CounterState(counterValue + 1));
  }

  Future<void> onDecrement(
    CounterEvent event,
    Emitter<CounterState> emit,
  ) async {
    final int counterValue = state.counter;
    emit(CounterState(counterValue - 1));
  }
}
