class Counter2State {

  late int count;
  Counter2State init() {
    return Counter2State()
      ..count = 0;
  }

  Counter2State clone() {
    return Counter2State()
      ..count = count;
  }
}
