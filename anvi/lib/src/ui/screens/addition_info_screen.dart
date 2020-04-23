import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/age_picker.dart';
import 'package:anvi/src/ui/custom_views/gender_picker.dart';
import 'package:flutter/material.dart';

class AdditionInfoScreen extends StatelessWidget {
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
                  height: 250.0,
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
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimens.borderInputMedium),
                    color: AppColors.loginbg,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.shadow,
                        offset: Offset(2, 2),
                      ),
                    ]),
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
                    SizedBox(
                      height: Dimens.marginCommon,
                    ),
                    GenderPicker(),
                    SizedBox(
                      height: Dimens.marginGroupView,
                    ),
                    Text(
                      'Age',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.lightBlack,
                      ),
                    ),
                    SizedBox(
                      height: Dimens.marginCommon,
                    ),
                    AgePicker(state: Scaffold.of(context)),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: Dimens.marginGroupView,
                  left: Dimens.marginCommon,
                  right: Dimens.marginCommon,
                ),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  height: Dimens.buttonHeightLarge,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimens.borderInputLarge),
                    ),
                    color: AppColors.primaryColor,
                    onPressed: () {},
                    child: Text(
                      'Update',
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
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
        size.width / 2);
    path.lineTo(size.width, 0); // Top right
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
