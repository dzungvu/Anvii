import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  final String tag;

  Tags({Key key, @required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimens.marginSmall),
      decoration: BoxDecoration(
        color: AppColors.tagBg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimens.borderInputMedium),
          bottomRight: Radius.circular(Dimens.borderInputMedium),
        ),
      ),
      child: Text(
        tag,
        style: TextStyle(
          color: AppColors.white,
          fontSize: Dimens.tagTextSize,
        ),
      ),
    );
  }
}
