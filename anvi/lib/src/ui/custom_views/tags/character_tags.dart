import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:flutter/material.dart';

class CharacterTag extends StatelessWidget {
  final List<CharacterInfo> listCharacter;

  CharacterTag({Key key, @required this.listCharacter}) : super(key: key);
  var positionMargin = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Charaters ',
          style: TextStyle(
            color: AppColors.lightBlack,
            fontSize: Dimens.itemTextSubTitleLarge,
          ),
        ),
        Container(
          height: 32,
          width: 120,
          child: Stack(
            children: _getListTag(),
          ),
        ),
      ],
    );
  }

  List<Widget> _getListTag() {
    List<Widget> listWidget = [];
    for (int i = 0; i < listCharacter.length; i++) {
      if (i < 3) {
        listWidget.add(
          _getItemTag(
            listCharacter[i],
          ),
        );
        positionMargin += 24;
      } else {
        listWidget.add(
          _getRemainTag(
            listCharacter.length - 3,
          ),
        );
        break;
      }
    }
    return listWidget;
  }

  Widget _getItemTag(CharacterInfo item) {
    return Positioned(
      left: positionMargin,
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.accentColor,
            width: 1.0,
          ),
        ),
        child: ClipOval(
          child: Image.network(
            item.characterImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _getRemainTag(int remainItem) {
    var tag;
    var tagString;
    if (remainItem > 10) {
      tag = remainItem / 10 * 10;
      tagString = '$tag+';
    } else {
      tag = remainItem;
      tagString = '$tag';
    }
    return Positioned(
      left: positionMargin,
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.accentColor,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            tagString,
            style: TextStyle(
              color: AppColors.lightBlack,
              fontSize: Dimens.itemTextSubTitleLarge,
            ),
          ),
        ),
      ),
    );
  }
}
