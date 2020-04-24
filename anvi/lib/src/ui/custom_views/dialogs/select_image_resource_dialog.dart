import 'dart:io';

import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/blocs/select_image_bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Dialog SelectImageResourceDialog(BuildContext context, SelectImageBloc bloc) {

  Future _getImageFromGallary() async{
    var imageSelect = await ImagePicker.pickImage(source: ImageSource.gallery);
    bloc.setValue(imageSelect);
  }

  Future _getImageFromCamera() async{
    var imageSelect = await ImagePicker.pickImage(source: ImageSource.camera);
    bloc.setValue(imageSelect);
  }

  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(
          Dimens.borderInputMedium,
        ),
      ),
    ),
    child: Container(
        height: 400.0,
        padding: EdgeInsets.symmetric(
            horizontal: Dimens.marginCommon,
            vertical: Dimens.marginGroupViewLarge),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              Dimens.borderInputMedium,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Select your avatar image resource',
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimens.itemTextTitle),
            ),
            SizedBox(
              height: Dimens.marginSmall,
            ),
            Text(
              'Your avatar will be displayed along with your username in public mode. Choose an avatar to show your personality',
              style: TextStyle(
                color: AppColors.black80,
                fontSize: Dimens.itemTextSubTitle,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            ButtonTheme(
              minWidth: double.infinity,
              height: Dimens.buttonHeightMedium,
              child: RaisedButton(
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(
                    Dimens.borderInputMedium,
                  ),
                )),
                onPressed: () {
                  _getImageFromGallary();
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Choose from Photo',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              height: Dimens.buttonHeightMedium,
              child: RaisedButton(
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(
                    Dimens.borderInputMedium,
                  ),
                )),
                onPressed: () {
                  _getImageFromCamera();
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Capture from Camera',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        )),
  );
}
