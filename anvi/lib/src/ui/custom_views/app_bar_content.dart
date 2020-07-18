import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/res/styles.dart';
import 'package:flutter/material.dart';

class AppBarContent extends StatelessWidget implements PreferredSizeWidget {
  final String titile;
  final String des;
  final Function onBackPress;

  AppBarContent({
    Key key,
    @required this.titile,
    @required this.onBackPress,
    this.des,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(Dimens.marginSmall),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
              iconSize: Dimens.backIconSize,
              color: AppColors.iconColorWithoutAppbar,
            ),
          ),
          Container(
            child: Text(
              titile,
              style: AppStyle.MAIN_MOUDLE_TITLE,
            ),
          ),
        ],
      ),
    );
  }
}
