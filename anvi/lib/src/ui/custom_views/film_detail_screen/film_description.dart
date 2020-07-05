import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class FilmDescription extends StatelessWidget {
  final String description;

  FilmDescription({Key key, @required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.marginCommon,
        vertical: Dimens.marginGroupView,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.marginCommon,
        vertical: Dimens.marginCommon,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
        color: AppColors.lightBlack,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: Dimens.shadowBlurRadius,
            offset: Offset(
              Dimens.shadowX,
              Dimens.shadowY,
            ),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description:",
            style: TextStyle(
              fontSize: Dimens.itemTextTitleLarge,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: Dimens.marginCommon,
          ),
          Text(
            description,
            style: TextStyle(
              color: AppColors.white,
              fontSize: Dimens.itemTextTitle,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
