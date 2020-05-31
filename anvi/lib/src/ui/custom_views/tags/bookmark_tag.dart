import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class BookmarkTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 150,
      padding: EdgeInsets.only(
        left: Dimens.safeAreaSmall,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimens.borderInputMedium,
            ),
          ),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: Dimens.shadowBlurRadius,
              offset: Offset(Dimens.shadowX, Dimens.shadowY),
            )
          ]),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.bookmark_border,
          ),
          SizedBox(
            width: Dimens.marginSmall,
          ),
          Text(
            'Bookmark',
          ),
        ],
      ),
    );
  }
}
