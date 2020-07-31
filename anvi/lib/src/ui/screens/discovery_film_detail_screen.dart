import 'dart:ui';

import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:anvi/src/models/film_detail.dart';
import 'package:anvi/src/ui/custom_views/back_button_style_1.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_point.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscoveryFilmDetailScreen extends StatelessWidget {
  static const routeName = '/discovery_film_detail';
  static const heroImageTag = 'heroImageTag';

  final FilmDetail _detail = SampleData.getFilmDetail();

  @override
  Widget build(BuildContext context) {
    DiscoveryItem data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Container(
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
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.marginCommon,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: AppColors.black80,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Text(
                                  _detail.filmInfo.animeName,
                                  style: TextStyle(
                                    fontSize: Dimens.itemTextTitleLarge,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Image.network(
                                  _detail.filmInfo.thumbnailUrl,
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Dimens.marginCommon,
                          ),
                          FilmPoint(
                            point: _detail.points[0],
                            writerInfo: _detail.writterInfo,
                            productionInfo: _detail.productionInfo,
                            theme: FilmPointTheme.BRIGHT,
                          ),
                          SizedBox(
                            height: Dimens.marginCommon,
                          ),
                          Container(
                            width: 100,
                            height: 10,
                            color: AppColors.white,
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimens.marginCommon,
                    ),
                    Text(
                      'Summary',
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimens.itemTextTitle,
                      ),
                    ),
                    SizedBox(
                      height: Dimens.marginCommon,
                    ),
                    Text(
                      _detail.description,
                      style: TextStyle(
                        color: AppColors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: Dimens.itemTextSubTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: Dimens.marginGroupViewLarge,
              left: Dimens.marginCommon,
              child: BackButtonStyle1(
                onPress: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _get
}
