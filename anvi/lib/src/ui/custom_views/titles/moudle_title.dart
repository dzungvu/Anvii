import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/res/styles.dart';
import 'package:flutter/material.dart';

class MainMoudleTitle extends StatelessWidget {

  final String title;
  final Function onTapShowAll;

  MainMoudleTitle({Key key, @required this.title, this.onTapShowAll}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(left: Dimens.safeAreaDistance),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: AppStyle.MAIN_MOUDLE_TITLE,
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              RaisedButton(
                elevation: 0.0,
                onPressed: () {
                  onTapShowAll();
                },
                child: Text(
                  'Show all',
                  style: TextStyle(
                    color: AppColors.lightBlack,
                    fontSize: Dimens.itemTextSubTitle,
                  ),
                ),
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Dimens.borderInputMedium,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.navigate_next,
                color: AppColors.lightBlack,
              )
            ],
          ),
        );
  }
}