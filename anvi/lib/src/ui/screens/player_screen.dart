import 'package:anvi/src/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class PlayerScreen extends StatelessWidget {
  static const routeName = '/player';

  @override
  Widget build(BuildContext context) {
    final String youtubeUrl = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Container(
        child: WillPopScope(
          onWillPop: () => _navigateBack(context),
          child: Container(
            child: FlutterYoutube.playYoutubeVideoByUrl(
              apiKey: Constants.YOUTUBE_API_KEY,
              videoUrl: youtubeUrl,
              autoPlay: true,
              fullScreen: false,
              
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _navigateBack(BuildContext context) async {
    print("Will navigate back");
    Navigator.of(context).pop();
    return true;
  }
}
