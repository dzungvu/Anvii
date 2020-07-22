import 'package:anvi/src/models/film_genres_info.dart';
import 'package:anvi/src/ui/custom_views/app_bar_content.dart';
import 'package:flutter/material.dart';

class FilmGenresAllScreen extends StatelessWidget {
  static const routeName = 'filmGenresAll';

  @override
  Widget build(BuildContext context) {
    FilmGenresInfo _genres = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBarContent(
        titile: _genres.name,
        onBackPress: () {
          Navigator.of(context).pop();
        },
      ),
      body: Container(
        //Todo: Will contain filter and genres selection icon + data for each genre
      ),
    );
  }
}
