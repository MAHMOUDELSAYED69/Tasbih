import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  int counter = 0;
  void increment() => emit(++counter);

  void reset() => emit(counter = 0);
}
