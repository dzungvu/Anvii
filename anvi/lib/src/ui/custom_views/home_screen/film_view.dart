import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/ui/custom_views/titles/moudle_title.dart';
import 'package:anvi/src/ui/items/film_item.dart';
import 'package:anvi/src/ui/screens/film_detail_screen.dart';
import 'package:flutter/material.dart';

class FilmView extends StatelessWidget {
  final List<FilmInfo> infos;
  FilmView({Key key, @required this.infos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.marginSmall,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MainMoudleTitle(
            title: 'Film',
            onTapShowAll: () {
              print('Tap show all');
            },
          ),
          Column(
            children: _getListItem(context),
          )
        ],
      ),
    );
  }

  List<Widget> _getListItem(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < infos.length; i++) {
      list.add(
        _getItem(context, i),
      );
    }
    return list;
  }

  Widget _getItem(BuildContext context, int index) {
    return FilmItem(
      itemData: infos[index],
      itemClick: () => {
        print('Navigate to detail screen'),
        Navigator.of(context).pushNamed(
          FilmDetailScreen.routeName,
          arguments: infos[index],
        ),
      },
    );
  }
}
