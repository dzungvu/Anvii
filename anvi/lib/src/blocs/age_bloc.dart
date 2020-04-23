import 'package:rxdart/subjects.dart';

class AgeBloc {
  var _streamController = BehaviorSubject();

  Stream get getStream => _streamController.stream;
  

  void selectAge(int age) {
    _streamController.sink.add(age);
  }

  void dispose() {
    _streamController.close();
  }
}