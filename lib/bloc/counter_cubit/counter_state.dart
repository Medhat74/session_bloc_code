part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class AddCounterSuccessState extends CounterState {}
class SubCounterSuccessState extends CounterState {}


