import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/models/film_info.dart';

class BookmarkInfo {
  final List<FilmInfo> listFilm;
  final List<CharacterInfo> listCharacter;

  BookmarkInfo({this.listFilm, this.listCharacter});
}