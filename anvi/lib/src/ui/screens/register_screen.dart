import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/res/styles.dart';
import 'package:anvi/src/ui/custom_views/custom_textfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.loginbg,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
              left: Dimens.safeAreaDistance, right: Dimens.safeAreaDistance),
          width: double.infinity,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.navigate_before,
                    color: AppColors.iconColorWithoutAppbar,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  'Create Your Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.itemTextTitleLarge,
                      color: AppColors.black),
                ),
                Text(
                  'Sign up and get started',
                  style: TextStyle(
                      color: AppColors.lightBlack,
                      fontSize: Dimens.itemTextSubTitleLarge),
                ),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                CustomTextField2(
                  hintText: 'Email',
                  keyboard: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                CustomTextField2(
                  hintText: 'Username',
                  keyboard: TextInputType.text,
                ),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                CustomTextField2(
                  hintText: 'Password',
                  keyboard: TextInputType.visiblePassword,
                  isSecure: true,
                ),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                CustomTextField2(
                  hintText: 'Confirm Password',
                  keyboard: TextInputType.visiblePassword,
                  isSecure: true,
                ),
                SizedBox(
                  height: Dimens.marginGroupView,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: ButtonTheme(
                    minWidth: double.infinity,
                    height: Dimens.buttonHeightLarge,
                    child: RaisedButton(
                      color: AppColors.primaryColor,
                      onPressed: () {
                        Navigator.of(context).pushNamed('/additionInfo');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Dimens.borderInputLarge),
                          side: BorderSide(color: AppColors.primaryColor)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: Dimens.safeAreaDistance,
                            right: Dimens.safeAreaDistance),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: Dimens.itemTextTitle),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RichText(
                      text: TextSpan(
                        style: AppStyle.REGISTER_TEXT,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'By using this app, you agree to our\n'),
                          TextSpan(
                              text: 'Terms of Use ',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              )),
                          TextSpan(text: 'and '),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimens.marginGroupView,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
