import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class HorizontalRadio<T> extends StatelessWidget {
  Color backgroundColor;
  Color indicatorColor;
  Color textEnableColor;
  Color textDisableColor;
  final List<T> listData;

  HorizontalRadio({
    Key key,
    this.backgroundColor,
    this.indicatorColor,
    this.textDisableColor,
    this.textEnableColor,
    @required this.listData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (backgroundColor == null) backgroundColor = AppColors.lightBlack;
    if (indicatorColor == null) indicatorColor = AppColors.primaryColor;
    if (textDisableColor == null) textDisableColor = AppColors.white;
    if (textEnableColor == null) textEnableColor = AppColors.black;

    return Align(
      alignment: Alignment.center,
      child: Wrap(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  Dimens.borderInputLarge,
                ),
              ),
            ),
            padding: EdgeInsets.all(
              Dimens.safeAreaSmall,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                listData.length,
                (index) => _getItemAt(index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getItemAt(int index) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.marginCommon,
        vertical: 6.0,
      ),
      decoration: BoxDecoration(
        color: indicatorColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.borderInputMedium,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          listData[index].toString(),
          style: TextStyle(
            fontSize: Dimens.itemTextTitle,
          ),
        ),
      ),
    );
  }
}
