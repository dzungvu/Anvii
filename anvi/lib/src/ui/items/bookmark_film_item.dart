import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/ui/custom_views/progress/film_episode_progress.dart';
import 'package:anvi/src/ui/custom_views/tags/character_tags.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class BookmarkFilmItem extends StatelessWidget {
  final FilmInfo itemData;
  BookmarkFilmItem({Key key, @required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: Dimens.safeAreaItem,
            left: Dimens.marginSmall,
            right: Dimens.marginSmall,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    Dimens.borderInputMedium,
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => {print('Remove bookmark')},
                  child: Icon(
                    Icons.bookmark,
                    color: AppColors.primaryColor,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: Dimens.marginGroupView,
            top: Dimens.marginCommon,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    Dimens.borderInputMedium,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow,
                    blurRadius: Dimens.shadowBlurRadius,
                    offset: Offset(Dimens.shadowX, Dimens.shadowY),
                  ),
                ],
                color: AppColors.white,
              ),
              padding: EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    Dimens.borderInputMedium,
                  ),
                ),
                child: Image.network(
                  itemData.thumbnailUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CharacterTag(listCharacter: SampleData.getListCharacter()),
          ),
          Positioned(
            top: 38,
            left: 128,
            right: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  itemData.animeName,
                  style: TextStyle(
                    color: AppColors.lightBlack,
                    fontSize: Dimens.itemTextTitle,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  itemData.authorName,
                  style: TextStyle(
                    color: AppColors.lightBlack,
                    fontSize: Dimens.itemTextSubTitle,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: Dimens.safeAreaItem,
                ),
                Text(
                  '${itemData.currentEpisode}/${itemData.totalEpisode} eps',
                  style: TextStyle(
                      color: AppColors.lightBlack,
                      fontSize: Dimens.itemTextSubTitle,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
