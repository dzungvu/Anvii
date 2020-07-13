import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/character_detail_screen/character_detail_header.dart';
import 'package:anvi/src/ui/custom_views/film_detail_screen/film_charaters.dart';
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
              extendHeight: MediaQuery.of(context).size.height,
            ),
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
    listWidget.add(_getCharacterImageWidget());
    listWidget.add(_getDescriptionWidget());
    listWidget.add(_getSeparatorWidget());
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
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'Description:\n',
              style: TextStyle(
                color: AppColors.white,
                fontSize: Dimens.textTitleLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: data.basicInfo.longDes,
              style: TextStyle(
                color: AppColors.white,
                fontSize: Dimens.itemTextTitle,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      // child: Text(
      //   data.basicInfo.longDes,
      //   style: TextStyle(
      //     color: AppColors.white,
      //     fontSize: Dimens.itemTextTitle,
      //   ),
      // ),
    );
  }

  Widget _getListCharacterRelated() {
    return FilmCharacters(
      listCharacters: data.charactersRelated,
    );
  }

  Widget _getCharacterImageWidget() {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) => _getImageAt(index),
        itemCount: data.images.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _getImageAt(int index) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimens.marginCommon,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        child: Image.network(
          data.images[index],
          height: 280,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
