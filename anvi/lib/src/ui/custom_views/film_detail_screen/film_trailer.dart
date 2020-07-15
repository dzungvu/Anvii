import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/screens/player_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilmTrailer extends StatelessWidget {
  final String trailerUrl;

  FilmTrailer({Key key, @required this.trailerUrl}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: Dimens.marginCommon,
      ),
      child: RaisedButton(
        onPressed: () => _gotoTrailer(context, trailerUrl,),
        child: Text(
          'Watch trailer',
          style: TextStyle(
            color: AppColors.white,
            fontSize: Dimens.itemTextSubTitle,
          ),
        ),
        color: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimens.borderInputMedium,
            ),
          ),
        ),
      ),
    );
  }

  void _gotoTrailer(BuildContext context, String url) {
    Navigator.of(context).pushNamed(
      PlayerScreen.routeName,
      arguments: url,
    );
  }
}
