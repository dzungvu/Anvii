import 'dart:ui';

import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/like_bookmark.dart';
import 'package:flutter/cupertino.dart';

class CharacterDetailHeader extends SliverPersistentHeaderDelegate {
  final double extendHeight;
  final double minHeight = 340;
  CharacterDetailHeader({@required this.extendHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://vignette.wikia.nocookie.net/p__/images/2/27/Kakashi_Hatake_-_Allied_Shinobi_Forces.png/revision/latest?cb=20160727001606&path-prefix=protagonist'),
          fit: BoxFit.fitHeight,
        ),
        color: AppColors.white,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.transparent,
                  AppColors.black80,
                ],
                stops: [
                  0.0,
                  0.7,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              Dimens.marginCommon,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Character \nName',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: Dimens.textTitleLarge,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: Dimens.marginCommon,
                ),
                Text(
                  'Character description here. Just a short text of how this character is in anime film. \nIts could be long, but just show all the information in this field. Not ... require with this text field.',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: Dimens.textSubTitleLarge,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: Dimens.marginGroupView,
                ),
                LikeBookMark(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => extendHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
