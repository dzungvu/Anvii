import 'package:anvi/src/ui/screens/home_page.dart';
import 'package:anvi/src/ui/screens/login_screen.dart';
import 'package:anvi/src/ui/screens/register_screen.dart';

final routes = {
  '/tabbar' : (context) => MyHomePage(),
  '/register': (context) => RegisterScreen(),
  '/login': (context) => LoginScreen(),
};