import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:flutter/material.dart';

class FilmTag extends StatelessWidget {
  final List<FilmInfo> listFilm;
  static const _MAX_ITEM = 1;
  FilmTag({Key key, @required this.listFilm}) : super(key: key);

  List<Widget> _getListWidget() {
    List<Widget> listWidget = [];
    listWidget.add(
      Center(
        child: Text(
          'Films ',
          style: TextStyle(
            color: AppColors.lightBlack,
            fontSize: Dimens.itemTextSubTitleLarge,
          ),
        ),
      ),
    );

    for (int i = 0; i < listFilm.length; i++) {
      if (i > _MAX_ITEM) {
        listWidget.add(_getFilmTagMoreItem(listFilm.length - _MAX_ITEM));
        break;
      }
      listWidget.add(_getFilmTagItem(listFilm[i]));
    }
    return listWidget;
  }

  Widget _getFilmTagItem(FilmInfo item) {
    return Container(
      margin: EdgeInsets.only(left: Dimens.safeAreaItem),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        child: Image.network(
          item.thumbnailUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _getFilmTagMoreItem(int remainItem) {
    return Container(
      margin: EdgeInsets.only(left: Dimens.safeAreaItem),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        border: Border.all(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        child: Center(
          child: Text(
            '$remainItem',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var listWidget = _getListWidget();
    return Container(
      height: 48,
      child: ListView.builder(
        itemBuilder: (context, index) => listWidget[index],
        itemCount: listWidget.length,
        scrollDirection: Axis.horizontal,
      ),
    );
    // return Row(
    //   children: _getListWidget(),
    // );
  }
}
