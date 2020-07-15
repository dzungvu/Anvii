import 'package:flutter/cupertino.dart';

class ImageFullScreen extends StatefulWidget {
  static const routeName = '/imageFullScreen';

  ImageFullScreen({
    Key key,
  });

  @override
  State<StatefulWidget> createState() {
    return _ImageFullScreenState();
  }
}

class _ImageFullScreenState extends State<ImageFullScreen> {
  double paddingTop = 0;
  double paddingBottom = 0;
  double paddingLeft = 0;
  double paddingRight = 0;

  double _currentY = 0.0;

  @override
  Widget build(BuildContext context) {
    ImageFullScreenArguments _args = ModalRoute.of(context).settings.arguments;
    double startY = 0.0;

    return GestureDetector(
      onVerticalDragDown: (dragDownDetail) => {},
      onVerticalDragStart: (value) => {
        startY = value.globalPosition.dy,
        print(
          'onVerticalDragDown---$startY---',
        ),
      },
      onVerticalDragUpdate: (value) => {
        _currentY = value.globalPosition.dy - startY,
        print('Current y: $_currentY'),
        if (_currentY > 0)
          {
            setState(() {
              paddingTop = _currentY / 4;
              paddingBottom = 0 - paddingTop;
              paddingLeft = _currentY / 8;
              paddingRight = _currentY / 8;
            }),
          }
      },
      onVerticalDragCancel: () => {
        print(
          'onVerticalDragCancel------',
        ),
      },
      onVerticalDragEnd: (value) => {
        print(
          '$_currentY => drag end',
        ),
        if (_currentY > 300)
          {
            print(
              '$_currentY => back',
            ),
            Navigator.of(context).pop(),
          }
        else
          {
            print(
              '$_currentY => Not back',
            ),
            setState(() {
              paddingTop = 0;
              paddingBottom = 0;
              paddingLeft = 0;
              paddingRight = 0;
            }),
          }
      },
      child: Stack(children: <Widget>[
        Positioned(
          top: paddingTop,
          bottom: paddingBottom,
          left: paddingLeft / 2,
          child: Container(
            width: MediaQuery.of(context).size.width - paddingRight,
            height: MediaQuery.of(context).size.height - paddingTop,
            child: Hero(
              tag: _args.imageTag,
              child: Image.network(
                _args.url,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class ImageFullScreenArguments {
  final String url;
  final String imageTag;

  ImageFullScreenArguments({
    @required this.url,
    @required this.imageTag,
  });
}
