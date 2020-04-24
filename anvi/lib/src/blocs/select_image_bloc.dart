import 'dart:io';

import 'package:rxdart/subjects.dart';

class SelectImageBloc {
  var _streamController = BehaviorSubject();

  Stream get getStream => _streamController.stream;

  void setValue(File image) {
    _streamController.sink.add(image);
  }

  void dispose() {
    _streamController.close();
  }
}