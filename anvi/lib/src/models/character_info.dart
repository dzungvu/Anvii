import 'package:anvi/src/models/film_info.dart';
import 'package:flutter/material.dart';

class CharacterInfo {
  final List<FilmInfo> listFilm;
  final String characterName;
  final String characterImage;
  final String shortDes;
  final String longDes;

  CharacterInfo({
    @required this.characterName,
    @required this.characterImage,
    @required this.listFilm,
    @required this.shortDes,
    @required this.longDes,
  });
}
