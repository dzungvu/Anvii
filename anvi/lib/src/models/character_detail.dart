import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:flutter/cupertino.dart';

class CharacterDetail {
  final CharacterInfo basicInfo;
  final List<String> images;
  final List<CharacterInfo> charactersRelated;
  final List<FilmInfo> filmsRelated;

  CharacterDetail({
    @required this.basicInfo,
    @required this.images,
    @required this.charactersRelated,
    @required this.filmsRelated,
  });
}
