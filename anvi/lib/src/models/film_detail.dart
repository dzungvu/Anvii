import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/models/point.dart';
import 'package:flutter/material.dart';

class FilmDetail {
  final String bgImageUrl;
  final FilmInfo filmInfo;
  final List<Point> points;
  final List<CharacterInfo> characters;

  FilmDetail({
    @required this.bgImageUrl,
    @required this.filmInfo,
    @required this.points,
    @required this.characters,
  });
}
