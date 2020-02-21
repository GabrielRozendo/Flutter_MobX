import 'dart:math';

import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @action
  void decrease() {
    value--;
  }

  @computed
  double get multiply => value * Random().nextDouble();
}
