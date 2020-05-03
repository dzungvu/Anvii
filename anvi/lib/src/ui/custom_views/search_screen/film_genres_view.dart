import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_genres_info.dart';
import 'package:anvi/src/ui/items/film_genres_item.dart';
import 'package:flutter/material.dart';

class FilmGenresView extends StatelessWidget {
  final List<FilmGenresInfo> listData;

  FilmGenresView({Key key, @required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.filmgenres_height + 16,
      child: ListView.builder(
        itemBuilder: (context, index) => _getFilmGenresItem(index),
        itemCount: listData.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _getFilmGenresItem(int pos) {
    return FillmGenresItem(
      item: listData[pos],
    );
  }
}
