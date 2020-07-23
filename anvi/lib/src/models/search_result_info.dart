import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:flutter/material.dart';

class SearchResultInfo {
  final List<FilmInfo> listFilm;
  final List<CharacterInfo> listCharacter;

  SearchResultInfo({
    @required this.listFilm,
    @required this.listCharacter,
  });
}
