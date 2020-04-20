import 'package:anvi/routes.dart';
import 'package:anvi/src/ui/screens/select_login_method_screen.dart';
import 'package:flutter/material.dart';
import 'package:anvi/src/ui/screens/login_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SelectLoginMethodScreen(),
        routes: routes,
      ),
    );
  }
}
