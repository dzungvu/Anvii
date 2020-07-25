import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/blocs/horizontal_radio_block.dart';
import 'package:flutter/material.dart';

class HorizontalRadio<T> extends StatelessWidget {
  Color backgroundColor;
  Color indicatorColor;
  Color textEnableColor;
  Color textDisableColor;
  final List<T> listData;
  Function onPress;

  HorizontalRadio({
    Key key,
    this.backgroundColor,
    this.indicatorColor,
    this.textDisableColor,
    this.textEnableColor,
    @required this.listData,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (backgroundColor == null) backgroundColor = AppColors.lightBlack;
    if (indicatorColor == null) indicatorColor = AppColors.primaryColor;
    if (textDisableColor == null) textDisableColor = AppColors.white;
    if (textEnableColor == null) textEnableColor = AppColors.black;

    var _bloc = HorizontalRadioBloc();

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
            child: StreamBuilder(
                stream: _bloc.stream,
                builder: (context, snapshot) {
                  var selectItem = snapshot.data == null ? 0 : snapshot.data;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      listData.length,
                      (index) => _getItemAt(index, index == selectItem, _bloc),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _getItemAt(index, isSelected, HorizontalRadioBloc bloc) {
    return GestureDetector(
      onTap: () {
        onPress(index);
        bloc.selectItem(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.marginCommon,
          vertical: 6.0,
        ),
        decoration: BoxDecoration(
          color: isSelected ? indicatorColor : backgroundColor,
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
              color: isSelected ? textEnableColor : textDisableColor,
            ),
          ),
        ),
      ),
    );
  }
}
