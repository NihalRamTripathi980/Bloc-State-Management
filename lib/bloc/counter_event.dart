part of 'counter_bloc.dart';

sealed class CountEvent {

}

final class CounterIncrementedEvent extends CountEvent {

}

final class CounterDecrementedEvent extends CountEvent {

}