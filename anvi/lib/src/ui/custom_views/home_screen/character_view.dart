import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/ui/custom_views/titles/moudle_title.dart';
import 'package:anvi/src/ui/items/character_item.dart';
import 'package:flutter/material.dart';

class CharacterView extends StatelessWidget {
  final List<CharacterInfo> infos;
  CharacterView({Key key, @required this.infos}) : super(key: key);
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
            title: 'Character',
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
    return CharacterItem(
      itemData: infos[index],
    );
  }
}
