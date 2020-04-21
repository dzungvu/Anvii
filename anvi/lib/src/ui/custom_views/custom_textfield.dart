import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class CustomTextField extends TextField {
  final String hintText;

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

class CustomTextField2 extends TextField {
  final String hintText;
  final TextInputType keyboard;
  final bool isSecure;
  CustomTextField2({Key key, @required this.hintText, @required this.keyboard, this.isSecure})
      : super(key: key);

  @override
  InputDecoration get decoration => InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.borderInputLarge),
            borderSide: BorderSide(
              color: AppColors.white,
              width: 0.0,
            )),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimens.borderInputLarge),
          borderSide: BorderSide(
            color: AppColors.white,
            width: 0.0,
          ),
        ),
        filled: true,
        fillColor: AppColors.white,
        hintText: hintText,
      );
  @override
  TextInputType get keyboardType => keyboard;

  @override
  bool get obscureText => (isSecure == true);

  @override
  TextStyle get style => super.style;
}
