import 'package:flutter/cupertino.dart';

class ImageFullScreen extends StatelessWidget {
  static const routeName = '/imageFullScreen';

  ImageFullScreen({
    Key key,
  });

  @override
  Widget build(BuildContext context) {
    ImageFullScreenArguments _args = ModalRoute.of(context).settings.arguments;

    return Container(
      child: Hero(
        tag: _args.imageTag,
        child: Image.network(
          _args.url,
          fit: BoxFit.contain,
        ),
      ),
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
