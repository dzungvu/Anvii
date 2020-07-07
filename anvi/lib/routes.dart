import 'package:anvi/src/ui/screens/addition_info_screen.dart';
import 'package:anvi/src/ui/screens/characters_detail_screen.dart';
import 'package:anvi/src/ui/screens/film_detail_screen.dart';
import 'package:anvi/src/ui/screens/home_page.dart';
import 'package:anvi/src/ui/screens/login_screen.dart';
import 'package:anvi/src/ui/screens/register_screen.dart';
import 'package:anvi/src/ui/screens/player_screen.dart';

final routes = {
  MyHomePage.routeName: (context) => MyHomePage(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  AdditionInfoScreen.routeName: (context) => AdditionInfoScreen(),
  FilmDetailScreen.routeName: (context) => FilmDetailScreen(),
  PlayerScreen.routeName: (context) => PlayerScreen(),
  CharacterDetailScreen.routeName: (context) => CharacterDetailScreen(),
};
