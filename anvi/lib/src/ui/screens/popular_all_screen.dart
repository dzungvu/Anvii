import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/popular_film_info.dart';
import 'package:anvi/src/ui/custom_views/app_bar_content.dart';
import 'package:anvi/src/ui/items/popular_item.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class PopularAllScreen extends StatelessWidget {
  static const String routeName = '/popularAll';
  //Todo: Get list from api
  final List<PopularFilmInfo> _listData = SampleData.getPopularFilmList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarContent(
        titile: 'Popular',
        des: 'Most people views',
        onBackPress: () {
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.safeAreaTini,
        ),
        child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            children: List.generate(
              _listData.length,
              (index) => PopularItemView(
                info: _listData[index],
              ),
            )),
      ),
    );
  }
}
