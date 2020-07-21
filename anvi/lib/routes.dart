import 'package:anvi/src/ui/screens/character_all_screen.dart';
import 'package:anvi/src/ui/screens/discovery_all_screen.dart';
import 'package:anvi/src/ui/screens/addition_info_screen.dart';
import 'package:anvi/src/ui/screens/characters_detail_screen.dart';
import 'package:anvi/src/ui/screens/film_all_screen.dart';
import 'package:anvi/src/ui/screens/film_detail_screen.dart';
import 'package:anvi/src/ui/screens/home_page.dart';
import 'package:anvi/src/ui/screens/image_full_screen.dart';
import 'package:anvi/src/ui/screens/login_screen.dart';
import 'package:anvi/src/ui/screens/popular_all_screen.dart';
import 'package:anvi/src/ui/screens/register_screen.dart';
import 'package:anvi/src/ui/screens/player_screen.dart';
import 'package:anvi/src/ui/screens/discovery_film_detail_screen.dart';

final routes = {
  MyHomePage.routeName: (context) => MyHomePage(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  AdditionInfoScreen.routeName: (context) => AdditionInfoScreen(),
  FilmDetailScreen.routeName: (context) => FilmDetailScreen(),
  PlayerScreen.routeName: (context) => PlayerScreen(),
  CharacterDetailScreen.routeName: (context) => CharacterDetailScreen(),
  ImageFullScreen.routeName: (context) => ImageFullScreen(),
  DiscoveryFilmDetailScreen.routeName: (context) => DiscoveryFilmDetailScreen(),
  DiscoveryAllScreen.routeName: (context) => DiscoveryAllScreen(),
  PopularAllScreen.routeName: (context) => PopularAllScreen(),
  FilmAllScreen.routeName: (context) => FilmAllScreen(),
  CharacterAllScreen.routName: (context) => CharacterAllScreen(),
};
