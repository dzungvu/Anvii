import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final CharacterInfo itemData;
  CharacterItem({Key key, @required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      margin: EdgeInsets.only(
        bottom: Dimens.marginSmall,
      ),
      padding: EdgeInsets.only(
        left: Dimens.marginCommon,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimens.borderInputMedium,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              offset: Offset(0.0, 4.0),
              blurRadius: 5,
            ),
          ],
          color: AppColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  itemData.characterName,
                  style: TextStyle(
                    color: AppColors.lightBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimens.itemTextTitle,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  itemData.shortDes,
                  style: TextStyle(
                    color: AppColors.lightBlack,
                    fontSize: Dimens.itemTextSubTitle,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: Dimens.marginSmall,
                ),
                RaisedButton(
                  elevation: 0.0,
                  onPressed: () {},
                  color: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        Dimens.borderInputMedium,
                      ),
                    ),
                  ),
                  child: Text(
                    'Show more',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: Dimens.itemTextSubTitle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimens.borderInputMedium),
              bottomRight: Radius.circular(Dimens.borderInputMedium),
            ),
            child: Image.network(
              itemData.characterImage,
              width: 100.0,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
