import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<Increment>((event, emit) {
      // state is a getter for the state_values
      final counterStateValue = state.count;
      final updatedValue = counterStateValue + 1;
      return emit(CounterState(count: updatedValue));
    });

    on<Decrement>((event, emit) {
      // state is a getter for the state_values
      final counterStateValue = state.count;
      final updatedValue = counterStateValue - 1;
      return emit(CounterState(count: updatedValue));
    });
  }
}
