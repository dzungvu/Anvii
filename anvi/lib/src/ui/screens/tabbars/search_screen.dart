import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/search_screen/film_genres_view.dart';
import 'package:anvi/src/ui/items/trending_content_item.dart';
import 'package:anvi/src/ui/items/trending_title.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  Widget _getViewAt(int pos) {
    switch (pos) {
      case 0:
        return FilmGenresView(listData: SampleData.getListFilmGenres());
      case 1:
        return TrendingTitle();
      case 2:
        return TrendingContentItem(item: SampleData.getListTrending()[0]);
      case 3:
        return TrendingContentItem(item: SampleData.getListTrending()[1]);
      case 4:
        return TrendingContentItem(item: SampleData.getListTrending()[2]);
      case 5:
        return TrendingContentItem(item: SampleData.getListTrending()[3]);
      case 6:
        return TrendingContentItem(item: SampleData.getListTrending()[4]);
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: false,
            floating: true,
            delegate: MySliverAppBar(
              expandedHeight: 100.0,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) => _getViewAt(index),
              childCount: 7,
            ),
          ),
        ],
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    print('$shrinkOffset and $overlapsContent');
    if (shrinkOffset > 10) {
      return Container(
        height: shrinkOffset,
      );
    }
    return Container(
      color: AppColors.darkWhite,
      height: expandedHeight,
      padding: EdgeInsets.only(
        left: Dimens.safeAreaDistance,
        right: Dimens.safeAreaDistance,
        bottom: Dimens.safeAreaDistance,
        top: Dimens.marginGroupViewLarge,
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: Dimens.marginSmall,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.black80,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.borderInputMedium),
            borderSide: BorderSide(
              color: AppColors.white,
              width: 0.0,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                Dimens.borderInputMedium,
              ),
            ),
          ),
          fillColor: AppColors.white,
          filled: true,
          hintText: 'Search',
          suffixIcon: Icon(
            Icons.clear,
            color: AppColors.lightBlack,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
