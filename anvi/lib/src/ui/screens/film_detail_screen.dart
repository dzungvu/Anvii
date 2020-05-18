import 'package:anvi/src/models/film_info.dart';
import 'package:flutter/material.dart';

class FilmDetailScreen extends StatelessWidget {
  static const routeName = '/film_detail';

  @override
  Widget build(BuildContext context) {
    final FilmInfo args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Container(
        child: Center(
          child: Text(args.animeName),
        ),
      ),
    );
  }
}
