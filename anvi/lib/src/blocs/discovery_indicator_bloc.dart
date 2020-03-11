import 'dart:async';

class DiscoveryIndicatorBloc{
  StreamController _streamController = StreamController();

  Stream get getStream => _streamController.stream;

  void selectItem(int index) {
    _streamController.sink.add(index);
  }

  void dispose(){
      _streamController.close();
  }
}