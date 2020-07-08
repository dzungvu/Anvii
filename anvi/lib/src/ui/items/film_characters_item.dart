import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:flutter/material.dart';

class FilmCharacterItem extends StatelessWidget {
  final CharacterInfo info;

  FilmCharacterItem({Key key, @required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.network(
              info.characterImage,
              fit: BoxFit.cover,
              height: 80,
              width: 80,
            ),
          ),
          SizedBox(
            height: Dimens.safeAreaSmall,
          ),
          Text(
            info.characterName,
            style: TextStyle(
              color: AppColors.lightBlack,
              fontSize: Dimens.itemTextSubTitle,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
