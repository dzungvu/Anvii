import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/ui/items/film_related_item.dart';
import 'package:flutter/cupertino.dart';

class FilmRelated extends StatelessWidget {
  final List<FilmInfo> listFilmInfo;

  FilmRelated({Key key, @required this.listFilmInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.marginCommon,
          ),
          child: Text(
            'Films related (${listFilmInfo.length})',
            style: TextStyle(
              color: AppColors.lightBlack,
              fontSize: Dimens.itemTextTitleLarge,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: Dimens.marginCommon,
        ),
        Container(
          height: 150,
          child: ListView.builder(
            itemBuilder: (context, index) => _getItemAt(index),
            itemCount: listFilmInfo.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  Widget _getItemAt(int index) {
    return FilmRelatedItem(info: listFilmInfo[index]);
  }
}
