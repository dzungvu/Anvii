import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {

  final Function onSearchPress;
  final String title;

  AppBarHome({Key key, @required this.onSearchPress, @required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: SafeArea(
        minimum: EdgeInsets.all(Dimens.safeAreaDistance),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(
                title,
                style: TextStyle(
                  color: AppColors.appbarTextColor,
                  fontSize: Dimens.appbarTextSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: IconButton(
                color: AppColors.appbarIconColor,
                icon: Icon(Icons.search),
                onPressed: () => onSearchPress,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
