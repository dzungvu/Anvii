import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_genres_info.dart';
import 'package:anvi/src/ui/screens/film_genres_all_screen.dart';
import 'package:flutter/material.dart';

class FillmGenresItem extends StatelessWidget {
  final FilmGenresInfo item;

  FillmGenresItem({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          FilmGenresAllScreen.routeName,
          arguments: item,
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: Dimens.marginSmall,
        ),
        padding: EdgeInsets.all(Dimens.safeAreaItem),
        height: Dimens.filmgenres_height,
        width: Dimens.filegenres_width,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimens.borderInputSuperLarge,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(
                Dimens.marginSmall,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primaryColor,
                  width: Dimens.filmgenres_border_width,
                ),
              ),
              child: Image.network(
                item.iconUrl,
                width: Dimens.filmgenres_icon_width,
              ),
            ),
            SizedBox(
              height: Dimens.safeAreaSmall,
            ),
            Text(
              item.name,
              style: TextStyle(
                color: AppColors.lightBlack,
                fontWeight: FontWeight.bold,
                fontSize: Dimens.itemTextSubTitle,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Container(
              height: 12.0,
              width: 1.0,
              color: AppColors.ddarkWhite,
            ),
            Text(
              item.totalItem,
              style: TextStyle(
                color: AppColors.lightBlack,
                fontSize: Dimens.itemTextSubTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
