import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/base_info.dart';
import 'package:flutter/material.dart';

class PopularItemView extends StatelessWidget {
  BaseInfo info;
  PopularItemView({key, @required this.info}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimens.safeAreaDistance),
      height: 200.0,
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.cornerMedium),
        color: AppColors.bgItem,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.cornerMedium),
            child: Image.network(info.thumbnailUrl),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimens.safeAreaItem, right: Dimens.safeAreaItem),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  info.animeName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.itemTextLarge),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  info.authorName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: AppColors.lightBlack,
                      fontSize: Dimens.itemTextSmall),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
