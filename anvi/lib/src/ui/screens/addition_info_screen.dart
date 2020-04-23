import 'dart:convert';

import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/gender_picker.dart';
import 'package:anvi/src/utils/constants.dart';
import 'package:anvi/src/utils/data_supporter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

class AdditionInfoScreen extends StatelessWidget {
  showPicker(BuildContext ct) {
    Picker(
      adapter: NumberPickerAdapter(
        data: DataSupporter.getAgeData(),
        // data: DataSupporter.getAgePickerData(),
      ),
      onConfirm: (picker, selecteds) {
        print(selecteds.toString());
        print(picker.getSelectedValues());
      },
    ).show(Scaffold.of(ct));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: AdditionClipper(),
                child: Container(
                  height: 350.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        AppColors.primaryColorLight,
                        AppColors.primaryColor,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          width: 64.0,
                          height: 64.0,
                          color: AppColors.white,
                          child: Icon(
                            Icons.add_a_photo,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimens.marginSmall,
                      ),
                      Text(
                        'Ảnh đại diện',
                        style: TextStyle(color: AppColors.white),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.borderInputMedium),
                  color: AppColors.loginbg,
                ),
                child: Padding(
                  padding: EdgeInsets.all(Dimens.marginCommon),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Gender',
                        style: TextStyle(
                          color: AppColors.lightBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GenderPicker()
                    ],
                  ),
                ),
              ),
              Text(
                'AGE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.lightBlack,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Show age picker');
                  showPicker(context);
                },
                child: Container(
                  child: Text('---'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AdditionClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80); // Top left
    path.quadraticBezierTo(
        /* X axis lowest point */ size.width / 2,
        /* Y axis lowest point */ size.height,
        /* End of curse line */ size.width,
        size.width - 80);
    path.lineTo(size.width, 0); // Top right
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
