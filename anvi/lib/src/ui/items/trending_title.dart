import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class TrendingTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkWhite,
      padding: const EdgeInsets.all(
        Dimens.marginCommon,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Trending',
            style: TextStyle(
              color: AppColors.lightBlack,
              fontWeight: FontWeight.bold,
              fontSize: Dimens.itemTextTitleLarge,
            ),
          ),
          SizedBox(height: Dimens.safeAreaItem,),
          Container(
            width: double.infinity,
            height: 1.0,
            color: AppColors.ddarkWhite,
          ),
        ],
      ),
    );
  }
}
