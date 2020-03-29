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
                    Icons.arrow_back,
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('lib/res/assets/kks.jpg'),
                    width: 100.0,
                  ),
                ),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                CustomTextField(hintText: 'Username'),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                CustomTextField(hintText: 'Password'),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                CustomTextField(hintText: 'Confirm Password'),
                SizedBox(
                  height: Dimens.safeAreaDistance,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: RaisedButton(
                    color: AppColors.primaryColor,
                    onPressed: () {},
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
                SizedBox(height: Dimens.marginGroupView,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
