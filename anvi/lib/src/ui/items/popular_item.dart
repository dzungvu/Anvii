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
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.cornerMedium),
            child: Image.network(info.thumbnailUrl),
          ),
          SizedBox(height: 4,),
          Text(info.animeName, style: TextStyle(color: AppColors.black, fontWeight: FontWeight.bold, fontSize: Dimens.itemTextLarge),),
          SizedBox(height: 2,),
          Text(info.authorName, style: TextStyle(color: AppColors.lightBlack, fontSize: Dimens.itemTextSmall),)
        ],
      ),
    );
  }
}