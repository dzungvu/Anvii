import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class FilmEspisodeProgress extends StatelessWidget {
  final int totalEps;
  final int currentEps;
  final double width;

  FilmEspisodeProgress(
      {Key key, @required this.totalEps, @required this.currentEps, @required this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double maxWidth = width;
    double progressWidth = maxWidth / totalEps * currentEps;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '$currentEps/$totalEps eps',
            style: TextStyle(
              color: AppColors.lightBlack,
              fontSize: Dimens.itemTextSubTitle,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: Dimens.marginSmall,
          ),
          Stack(
            children: <Widget>[
              Container(
                width: maxWidth,
                height: 4.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                  color: AppColors.ddarkWhite,
                ),
              ),
              Container(
                width: progressWidth,
                height: 4.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
