import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class CustomTextField extends TextField {
  String hintText;

  CustomTextField({Key key, @required this.hintText}) : super(key: key);

  @override
  InputDecoration get decoration => InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimens.borderInputLarge),
        ),
        fillColor: AppColors.loginbg,
        hintText: hintText,
      );

  @override
  TextStyle get style => TextStyle(height: Dimens.textfieldHeigh);
}
