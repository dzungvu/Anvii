import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/ui/custom_views/progress/film_episode_progress.dart';
import 'package:flutter/material.dart';

class FilmItem extends StatelessWidget {
  final FilmInfo itemData;

  FilmItem({Key key, @required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: Dimens.marginSmall,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(Dimens.borderInputMedium),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(2.0, 2.0),
          ),
        ],
        color: AppColors.white,
      ),
      padding: EdgeInsets.all(
        Dimens.marginCommon,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(
                  itemData.animeName,
                  style: TextStyle(
                    color: AppColors.lightBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimens.itemTextTitle,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${(itemData.currentEpisode / itemData.totalEpisode * 100).toInt()}%',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimens.itemTextTitleLarge,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Dimens.marginCommon,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimens.borderInputMedium),
                ),
                child: Image.network(
                  itemData.thumbnailUrl,
                  width: Dimens.thumbnailSmall,
                  height: Dimens.thumbnailSmall,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: Dimens.marginSmall,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      itemData.authorName,
                      style: TextStyle(
                        color: AppColors.lightBlack,
                        fontSize: Dimens.itemTextSubTitle,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      itemData.productionName,
                      style: TextStyle(
                        color: AppColors.lightBlack,
                        fontSize: Dimens.itemTextSubTitle,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              FilmEspisodeProgress(
                totalEps: itemData.totalEpisode,
                currentEps: itemData.currentEpisode,
                width: 100.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
