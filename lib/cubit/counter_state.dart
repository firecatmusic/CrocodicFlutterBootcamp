part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CurrentCounter extends CounterState {
  final int counter;

  CurrentCounter(this.counter);
}
