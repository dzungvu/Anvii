import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/setting_item_info.dart';
import 'package:flutter/material.dart';

class SettingContentItem extends StatelessWidget {
  final SettingItemInfo itemData;
  SettingContentItem({Key key, @required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.all(Dimens.marginCommon),
      margin: EdgeInsets.only(bottom: 1),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(
              itemData.title,
              style: TextStyle(color: AppColors.lightBlack),
            ),
          ),
          Icon(
            Icons.navigate_next,
            color: AppColors.lightBlack,
            size: 32,
          ),
        ],
      ),
    );
  }
}
