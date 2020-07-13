import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_detail.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_charaters.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_description.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_detail_header.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_point.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_related.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_summary.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_trailer.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/like_bookmark.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class FilmDetailScreen extends StatelessWidget {
  static const routeName = '/film_detail';

  @override
  Widget build(BuildContext context) {
    final FilmInfo args = ModalRoute.of(context).settings.arguments;

    //TODO: Value of this screen will be recieved by calling API
    FilmDetail data = SampleData.getFilmDetail();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FilmDetailHeader(
              bgImage: data.bgImageUrl,
              thumbnail: data.filmInfo.thumbnailUrl,
              title: data.filmInfo.animeName,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.marginCommon,
              ),
              child: LikeBookMark(),
            ),
            SizedBox(
              height: Dimens.marginSmall,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.marginCommon,
              ),
              child: FilmPoint(
                point: data.points[0],
                productionInfo: data.productionInfo,
                writerInfo: data.writterInfo,
              ),
            ),
            SizedBox(
              height: Dimens.marginCommon,
            ),
            FilmCharacters(
              listCharacters: data.characters,
            ),
            FilmSummary(
              totalSeason: data.totalSeason,
              currentEpisode: data.filmInfo.currentEpisode,
              totolEpisode: data.filmInfo.totalEpisode,
              publishTime: data.filmInfo.publishTime,
            ),
            Align(
              child: FilmTrailer(
                trailerUrl: 'https://www.youtube.com/watch?v=XWby1Kv5xE8',
              ),
              alignment: Alignment.centerLeft,
            ),
            FilmDescription(
              description: data.description,
            ),
            FilmRelated(
              listFilmInfo: data.filmRelateds,
              title: Text(
                'Films related (${data.filmRelateds.length})',
                style: TextStyle(
                  color: AppColors.lightBlack,
                  fontSize: Dimens.itemTextTitleLarge,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: Dimens.marginGroupViewLarge,
            ),
          ],
        ),
      ),
    );
  }
}
