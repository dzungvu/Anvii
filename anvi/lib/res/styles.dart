import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class AppStyle{
  static const MAIN_MOUDLE_TITLE = TextStyle(
    color: AppColors.moudleItemTitle,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.itemTextTitle,
  );

  static const REGISTER_TEXT = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    fontSize: Dimens.textLinkMedium,
  );
}