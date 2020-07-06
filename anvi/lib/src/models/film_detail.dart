import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/models/point.dart';
import 'package:anvi/src/models/production_info.dart';
import 'package:anvi/src/models/writer_info.dart';
import 'package:flutter/material.dart';

class FilmDetail {
  final String bgImageUrl;
  final FilmInfo filmInfo;
  final WriterInfo writterInfo;
  final ProductionInfo productionInfo;
  final List<Point> points;
  final List<CharacterInfo> characters;
  final List<FilmInfo> filmRelateds;
  final String description;
  final String totalSeason;

  FilmDetail({
    @required this.bgImageUrl,
    @required this.filmInfo,
    @required this.writterInfo,
    @required this.productionInfo,
    @required this.points,
    @required this.characters,
    @required this.filmRelateds,
    @required this.description,
    @required this.totalSeason,
  });
}
