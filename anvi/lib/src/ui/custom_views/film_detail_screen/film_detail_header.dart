import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class FilmDetailHeader extends StatelessWidget {
  final String bgImage;
  final String thumbnail;
  final String title;

  FilmDetailHeader({
    Key key,
    @required this.bgImage,
    @required this.thumbnail,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: <Widget>[
          Image.network(
            bgImage,
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 150,
            left: 16,
            child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.borderInputMedium),
                  ),
                ),
                padding: EdgeInsets.all(
                  Dimens.thumbnailPadding,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.borderInputMedium),
                  ),
                  child: Image.network(
                    thumbnail,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                )),
          ),
          Positioned(
            top: 208,
            left: 132,
            right: 16,
            child: Text(
              title,
              maxLines: 3,
              style: TextStyle(
                  color: AppColors.black80,
                  fontSize: Dimens.itemTextTitleLarge,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
