import 'package:bloc_counter/bloc/Counter/bloc_counter_event.dart';
import 'package:bloc_counter/bloc/Counter/bloc_counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
    on<ResetCounter>(_reset);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: state.counter +1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit){
    if(state.counter > 0){
      emit(state.copyWith(counter: state.counter -1));
    }else{
      emit(state.copyWith(message: "value can't be negative"));
    }
  }

  void _reset(ResetCounter event, Emitter<CounterState> emit){
    emit(state.copyWith(counter: 0 ));
  }
}