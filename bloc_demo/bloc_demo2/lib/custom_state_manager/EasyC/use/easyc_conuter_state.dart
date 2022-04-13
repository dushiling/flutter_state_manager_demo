class EasyCCounterState {
  late int count;

  EasyCCounterState init() {
    return EasyCCounterState()..count = 0;
  }

  EasyCCounterState clone() {
    return EasyCCounterState()..count = count;
  }
}
