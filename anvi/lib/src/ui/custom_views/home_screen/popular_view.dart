import 'package:anvi/src/models/base_info.dart';
import 'package:anvi/src/ui/custom_views/titles/moudle_title.dart';
import 'package:anvi/src/ui/items/popular_item.dart';
import 'package:flutter/material.dart';

class PopularView extends StatelessWidget {
  List<BaseInfo> infos;
  PopularView({key, @required this.infos}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        MainMoudleTitle(
          title: 'Popular',
          onTapShowAll: () {
            print('show all');
          },
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 230,
          child: ListView.builder(
            itemCount: infos.length,
            itemBuilder: (context, index) => _getItemAt(context, index),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  Widget _getItemAt(BuildContext context, int index) {
    return Container(
      child: PopularItemView(info: infos[index]),
    );
  }
}
