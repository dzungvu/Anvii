import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/circle_progress.dart';
import 'package:flutter/material.dart';

class FilmSummary extends StatelessWidget {
  final String publishTime;
  final int totolEpisode;
  final int currentEpisode;
  final String totalSeason;

  FilmSummary({
    Key key,
    @required this.publishTime,
    @required this.totolEpisode,
    @required this.currentEpisode,
    @required this.totalSeason,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: Dimens.marginCommon,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Publish time: ',
                        style: TextStyle(
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: Dimens.itemTextSubTitle,
                        ),
                      ),
                      TextSpan(
                        text: publishTime,
                        style: TextStyle(
                          color: AppColors.black80,
                          fontWeight: FontWeight.normal,
                          fontSize: Dimens.itemTextTitle,
                        ),
                      ),
                    ]),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Progress: ',
                        style: TextStyle(
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: Dimens.itemTextSubTitle,
                        ),
                      ),
                      TextSpan(
                        text: '$currentEpisode/$totolEpisode',
                        style: TextStyle(
                          color: AppColors.black80,
                          fontWeight: FontWeight.normal,
                          fontSize: Dimens.itemTextTitle,
                        ),
                      ),
                    ]),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Total season: ',
                        style: TextStyle(
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: Dimens.itemTextSubTitle,
                        ),
                      ),
                      TextSpan(
                        text: totalSeason,
                        style: TextStyle(
                          color: AppColors.black80,
                          fontWeight: FontWeight.normal,
                          fontSize: Dimens.itemTextTitle,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          CircleProgress(percent: (currentEpisode / totolEpisode * 100)),
        ],
      ),
    );
  }
}
