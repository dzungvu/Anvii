import 'package:anvi/src/ui/items/film_genres_item.dart';
import 'package:flutter/material.dart';

class FilmGenresView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => _getFilmGenresItem(index),
        itemCount: 2,
      ),
    );
  }

  Widget _getFilmGenresItem(int pos) {
    return FillmGenresItem();
  }
}
