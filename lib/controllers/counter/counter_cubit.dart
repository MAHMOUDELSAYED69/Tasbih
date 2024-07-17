import 'package:bloc/bloc.dart';
import 'package:tasbih/utils/cache/cache.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(CacheData.getInt(key: 'counter') ?? 0);
  void increment() {
    int counter = state + 1;
    emit(counter);
    CacheData.setInt(key: 'counter', value: counter);
  }

  void reset() {
    emit(0);
    CacheData.clearData();
  }
}
