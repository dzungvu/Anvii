import 'package:anvi/routes.dart';
import 'package:flutter/material.dart';
import 'package:anvi/src/ui/screens/login_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: routes,
    );
  }
}
