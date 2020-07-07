import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/character_detail_screen/character_detail_header.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_charaters.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_related.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterDetailScreen extends StatelessWidget {
  static const routeName = '/character_detail';

  final data = SampleData.getListCharacterDetail()[0];
  @override
  Widget build(BuildContext context) {
    var listWidget = _getListWidget();
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: CharacterDetailHeader(
                extendHeight: MediaQuery.of(context).size.height),
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) => listWidget[index],
              childCount: listWidget.length,
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _getListWidget() {
    List<Widget> listWidget = [];
    listWidget.add(_getSeparatorWidget());
    listWidget.add(_getDescriptionWidget());
    listWidget.add(_getSeparatorWidget());
    listWidget.add(_getListFilmRelated());
    listWidget.add(_getSeparatorWidget());
    listWidget.add(_getListCharacterRelated());
    listWidget.add(_getSeparatorWidget());
    return listWidget;
  }

  Widget _getSeparatorWidget() {
    return SizedBox(
      height: Dimens.marginGroupView,
    );
  }

  Widget _getDescriptionWidget() {
    return Container(
      margin: EdgeInsets.all(
        Dimens.marginCommon,
      ),
      padding: EdgeInsets.all(
        Dimens.marginCommon,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        color: AppColors.lightBlack,
      ),
      child: Text(
        data.basicInfo.longDes,
        style: TextStyle(
          color: AppColors.white,
          fontSize: Dimens.itemTextTitle,
        ),
      ),
    );
  }

  Widget _getListFilmRelated() {
    return FilmRelated(listFilmInfo: data.filmsRelated);
  }

  Widget _getListCharacterRelated() {
    return FilmCharacters(
      listCharacters: data.charactersRelated,
    );
  }
}
