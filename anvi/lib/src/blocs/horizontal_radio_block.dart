import 'dart:async';

import 'package:rxdart/subjects.dart';

class HorizontalRadioBloc {
  StreamController _streamController = BehaviorSubject();
  Stream get stream => _streamController.stream;
  selectItem(int index) {
    _streamController.sink.add(index);
  }

  dispose() {
    _streamController.close();
  }
}
