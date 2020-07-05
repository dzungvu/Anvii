import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/ui/items/film_characters_item.dart';
import 'package:flutter/material.dart';

class FilmCharacters extends StatelessWidget {
  final List<CharacterInfo> listCharacters;

  FilmCharacters({Key key, @required this.listCharacters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.safeAreaDistance,
            ),
            child: Text(
              'Film\'s charaters',
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
              itemCount: listCharacters.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getItemAt(int index) {
    return FilmCharacterItem(
      info: listCharacters[index],
    );
  }
}
