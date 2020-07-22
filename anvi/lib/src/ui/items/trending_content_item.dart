import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/trending_item_info.dart';
import 'package:anvi/src/ui/screens/search_result_screen.dart';
import 'package:flutter/material.dart';

class TrendingContentItem extends StatelessWidget {
  final TrendingItemInfo item;
  TrendingContentItem({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          SearchResultScreen.routeName,
          arguments: item.title,
        );
      },
      child: Container(
        color: AppColors.darkWhite,
        padding: const EdgeInsets.all(
          Dimens.marginCommon,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.title,
              style: TextStyle(
                color: AppColors.accentColor,
                fontSize: Dimens.itemTextTitle,
              ),
            ),
            SizedBox(
              height: Dimens.safeAreaItem,
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              color: AppColors.ddarkWhite,
            ),
          ],
        ),
      ),
    );
  }
}
