import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';



class CounterBloc extends Bloc<CountEvent,int>{
  CounterBloc() : super(0){
    on<CounterIncrementedEvent>((event, emit) {

      emit(state+1);
    }
    );

    on<CounterDecrementedEvent>((event, emit) {
      if(state==0){
        return;
      }
      emit(state-1);
    }
    );
  }

}