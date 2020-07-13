import 'dart:ui';

import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:flutter/material.dart';

class FilmRelatedItem extends StatelessWidget {
  final FilmInfo info;
  FilmRelatedItem({Key key, @required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimens.safeAreaSmall,
        bottom: Dimens.marginSmall,
      ),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        color: AppColors.white,
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(
                Dimens.borderInputMedium,
              ),
            ),
            child: Image.network(
              info.thumbnailUrl,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  Dimens.borderInputMedium,
                ),
              ),
              gradient: LinearGradient(
                colors: [AppColors.transparent, AppColors.black80],
                begin: Alignment.topLeft,
                end: Alignment(0.8, 0.0),
                tileMode: TileMode.mirror,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                Dimens.marginSmall,
              ),
              child: Text(
                info.animeName,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: Dimens.itemTextSubTitle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
