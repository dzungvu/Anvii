import 'dart:async';

import 'package:rxdart/subjects.dart';

class GenderBloc {
  StreamController _streamController = BehaviorSubject();
  Stream get getStream => _streamController.stream;
  void selectItem(Gender gender) {
    _streamController.sink.add(gender);
  }

  void dispose(){
      _streamController.close();
  }
}

enum Gender {
  MALE,
  FEMALE,
}