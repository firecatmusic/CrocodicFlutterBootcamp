part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent{
  final int multiply;

  IncrementEvent(this.multiply);

}