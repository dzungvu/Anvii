import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/setting_item_info.dart';
import 'package:flutter/material.dart';

class SettingTitleItem extends StatelessWidget {
  final SettingItemInfo itemData;
  SettingTitleItem({Key key, @required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.marginCommon,
        vertical: Dimens.marginGroupView,
      ),
      child: Text(
        itemData.title,
        style: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.bold,
          fontSize: Dimens.itemTextTitle,
        ),
      ),
    );
  }
}
