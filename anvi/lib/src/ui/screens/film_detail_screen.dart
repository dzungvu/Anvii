import 'package:anvi/src/models/film_detail.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_detail_header.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class FilmDetailScreen extends StatelessWidget {
  static const routeName = '/film_detail';

  @override
  Widget build(BuildContext context) {
    final FilmInfo args = ModalRoute.of(context).settings.arguments;

    //TODO: Value of this screen will be recieved by calling API
    FilmDetail data = SampleData.getFilmDetail();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FilmDetailHeader(
              bgImage: data.bgImageUrl,
              thumbnail: data.filmInfo.thumbnailUrl,
              title: data.filmInfo.animeName,
            )
          ],
        ),
      ),
    );
  }
}
