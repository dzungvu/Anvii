import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class Sticker extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String content;
  final StickerTheme theme;

  Sticker({
    Key key,
    @required this.imageUrl,
    @required this.title,
    @required this.content,
    this.theme,
  });

  @override
  Widget build(BuildContext context) {
    var _currentTheme = StickerTheme.DARK;
    if (theme != null) {
      _currentTheme = theme;
    }
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 40,
            color: _currentTheme == StickerTheme.DARK
                ? AppColors.black
                : AppColors.white,
          ),
          SizedBox(
            width: Dimens.marginSmall,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: Dimens.itemTextSubTitle,
                      color: _currentTheme == StickerTheme.DARK
                          ? AppColors.lightBlack
                          : AppColors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                ),
                Container(
                  child: Text(
                    content,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: _currentTheme == StickerTheme.DARK
                          ? AppColors.lightBlack
                          : AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum StickerTheme {
  BRIGHT,
  DARK,
}
