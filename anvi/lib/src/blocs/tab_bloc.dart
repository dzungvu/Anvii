import 'dart:async';

class TabBloc{
  StreamController _tabStreamController = StreamController();

  Stream get tabStream => _tabStreamController.stream;

  void selectTab(int index) {
    _tabStreamController.sink.add(index);
  }

  void dispose(){
      _tabStreamController.close();
  }
}