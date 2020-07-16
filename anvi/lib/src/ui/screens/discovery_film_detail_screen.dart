import 'dart:ui';

import 'package:anvi/res/colors.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:anvi/src/models/film_detail.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/cupertino.dart';

class DiscoveryFilmDetailScreen extends StatelessWidget {
  static const routeName = '/discovery_film_detail';
  static const heroImageTag = 'heroImageTag';

  final FilmDetail _detail = SampleData.getFilmDetail();

  @override
  Widget build(BuildContext context) {
    DiscoveryItem data = ModalRoute.of(context).settings.arguments;
    return Container(
      color: AppColors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Hero(
              tag: heroImageTag,
              child: Image.network(
                data.imageUrl,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: AppColors.black80,
            ),
          ),
        ],
      ),
    );
  }

  // Widget _get
}
