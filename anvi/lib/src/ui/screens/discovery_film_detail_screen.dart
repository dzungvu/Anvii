import 'dart:ui';

import 'package:anvi/res/colors.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:flutter/cupertino.dart';

class DiscoveryFilmDetailScreen extends StatelessWidget {
  static const routeName = '/discovery_film_detail';

  @override
  Widget build(BuildContext context) {
    DiscoveryItem data = ModalRoute.of(context).settings.arguments;
    return Container(
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[_headerView(context, data)],
      ),
    );
  }

  Widget _headerView(BuildContext context, DiscoveryItem data) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Image.network(
            data.imageUrl,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 3 * 2,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 3 * 2,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.transparent,
                AppColors.white,
              ],
              stops: [
                0.0,
                0.99,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }

  // Widget _get
}
