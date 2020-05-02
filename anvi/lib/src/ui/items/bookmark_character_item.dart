import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/ui/custom_views/tags/film_tags.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class BookmarkCharacterItem extends StatelessWidget {
  final CharacterInfo itemData;
  BookmarkCharacterItem({Key key, @required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: double.infinity,
      margin: EdgeInsets.all(
        Dimens.marginSmall,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(
                Dimens.borderInputMedium,
              ),
            ),
            child: Image.network(
              itemData.characterImage,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(Dimens.marginSmall),
                        child: Text(
                          itemData.characterName,
                          style: TextStyle(
                            color: AppColors.lightBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimens.itemTextTitle,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {print('Bookmark pressed')},
                      child: Icon(
                        Icons.bookmark,
                        color: AppColors.primaryColor,
                        size: 32,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    Dimens.marginSmall,
                  ),
                  child: Text(
                    itemData.shortDes,
                    style: TextStyle(
                      color: AppColors.ddarkWhite,
                      fontSize: Dimens.itemTextSubTitle,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: Dimens.marginSmall),
                  width: 48,
                  height: 2,
                  color: AppColors.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: Dimens.marginSmall, top: Dimens.marginCommon),
                  child: FilmTag(
                    listFilm: SampleData.getFilmList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
