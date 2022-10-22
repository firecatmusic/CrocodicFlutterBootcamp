part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CurrentCounter extends CounterState {
  final int counter;

  CurrentCounter(this.counter);
}
