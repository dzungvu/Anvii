import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/app_bar_content.dart';
import 'package:anvi/src/ui/items/film_item.dart';
import 'package:anvi/src/ui/screens/film_detail_screen.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilmAllScreen extends StatelessWidget {
  static const routeName = '/filmAll';
  final _listFilm = SampleData.getFilmList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarContent(
        titile: 'All Films',
        onBackPress: () {
          Navigator.of(context).pop();
        },
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => _getItemAt(index, context),
        itemCount: _listFilm.length + 1,
      ),
    );
  }

  Widget _getItemAt(int index, BuildContext context) {
    if (index == _listFilm.length) {
      return SizedBox(
        height: Dimens.marginGroupView,
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.marginCommon),
      child: FilmItem(
        itemData: _listFilm[index],
        itemClick: () {
          Navigator.of(context).pushNamed(
            FilmDetailScreen.routeName,
            arguments: _listFilm[index].id,
          );
        },
      ),
    );
  }
}
