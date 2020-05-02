import 'package:anvi/res/colors.dart';
import 'package:anvi/src/models/bookmark_info.dart';
import 'package:anvi/src/ui/items/bookmark_character_item.dart';
import 'package:anvi/src/ui/items/bookmark_film_item.dart';
import 'package:anvi/src/ui/items/bookmark_title_item.dart';
import 'package:anvi/src/ui/items/character_item.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  final BookmarkInfo _info = SampleData.getBookmarkInfo();

  List<Widget> _getListWidget() {
    List<Widget> returnList = [];
    returnList.add(
      BookmarkTitleItem(
        title: 'Bookmarked\nFilms',
        backgroundColor: AppColors.primaryColor,
        imageUrl:
            'https://i.dlpng.com/static/png/5922811-transparent-naruhina-tumblr-hinata-hyuga-transparent-500_500_preview.png',
      ),
    );
    for (int i = 0; i < _info.listFilm.length; i++) {
      returnList.add(
        BookmarkFilmItem(itemData: _info.listFilm[i]),
      );
    }
    returnList.add(
      BookmarkTitleItem(
        title: 'Bookmarked\nCharacters',
        backgroundColor: AppColors.accentColor,
        imageUrl:
            'https://pngriver.com/wp-content/uploads/2018/03/Download-Kaneki-Ken-PNG-Photos-312-300x194.png',
      ),
    );
    for (int i = 0; i < _info.listCharacter.length; i++) {
      returnList.add(
        BookmarkCharacterItem(itemData: _info.listCharacter[i]),
      );
    }
    return returnList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listWidget = _getListWidget();
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) => listWidget[index],
          itemCount: listWidget.length,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
