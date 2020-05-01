import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class BookmarkTitleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Dimens.bookmark_title_height,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            height: Dimens.bookmark_title_height - 50,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.all(
                  Dimens.marginSmall,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: Dimens.marginCommon,
                  horizontal: Dimens.marginCommon,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Dimens.borderInputMedium,
                    ),
                  ),
                  color: AppColors.primaryColor,
                ),
                child: Text(
                  'Bookmarked\nCharacter',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimens.bookmark_title_text,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimens.borderInputMedium),
                bottomRight: Radius.circular(Dimens.borderInputMedium),
              ),
              child: Image.network(
                'https://i.dlpng.com/static/png/5922811-transparent-naruhina-tumblr-hinata-hyuga-transparent-500_500_preview.png',
                width: 100.0,
                height: double.infinity,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
