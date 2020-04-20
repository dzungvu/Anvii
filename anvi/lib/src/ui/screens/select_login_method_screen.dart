import 'dart:convert';

import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/res/styles.dart';
import 'package:anvi/src/utils/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

class SelectLoginMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _saveUser(FacebookLoginResult result) async {
      final token = result.accessToken.token;
      print(token);
      final graphResponse = await http.get(
          'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture&access_token=${token}');
      final profile = jsonDecode(graphResponse.body);
      print(profile);
    }

    void _showLoggedInUI() {
      Navigator.of(context).pushNamed('/tabbar');
    }

    void _showCancelledMessage() {}

    void _showErrorOnUI(String error) {}

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'lib/res/assets/loginbg.png',
              ),
              fit: BoxFit.cover),
        ),
        padding: EdgeInsets.all(Dimens.safeAreaDistance),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('lib/res/assets/anviilogo.png'),
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(
              'The very Ultimate Anime Dictionary',
              style: TextStyle(
                color: AppColors.black,
                fontSize: Dimens.itemTextSubTitle,
              ),
            ),
            SizedBox(
              height: Dimens.marginGroupView,
            ),
            ButtonTheme(
              minWidth: double.infinity,
              height: Dimens.buttonHeightLarge,
              child: RaisedButton(
                color: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Dimens.borderInputMedium),
                    side: BorderSide(
                      color: AppColors.primaryColor,
                    )),
                child: Text(
                  'Login with account',
                  style: TextStyle(
                      color: AppColors.white, fontSize: Dimens.itemTextTitle),
                ),
                onPressed: () => {Navigator.of(context).pushNamed('/login')},
              ),
            ),
            SizedBox(
              height: Dimens.marginSmall,
            ),
            ButtonTheme(
              minWidth: double.infinity,
              height: Dimens.buttonHeightLarge,
              child: RaisedButton(
                color: AppColors.facebook,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Dimens.borderInputMedium),
                    side: BorderSide(
                      color: AppColors.facebook,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('lib/res/assets/facebook.png'),
                      height: 24.0,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: Dimens.marginSmall,
                    ),
                    Text(
                      'Login with facebook',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: Dimens.itemTextTitle),
                    ),
                  ],
                ),
                onPressed: () async {
                  final result = await initializeFacebookLogin();
                  switch (result.status) {
                    case FacebookLoginStatus.loggedIn:
                      _saveUser(result);
                      _showLoggedInUI();
                      break;
                    case FacebookLoginStatus.cancelledByUser:
                      _showCancelledMessage();
                      break;
                    case FacebookLoginStatus.error:
                      _showErrorOnUI(result.errorMessage);
                      break;
                  }
                },
              ),
            ),
            SizedBox(
              height: Dimens.marginSmall,
            ),
            ButtonTheme(
              minWidth: double.infinity,
              height: Dimens.buttonHeightLarge,
              child: RaisedButton(
                color: AppColors.google,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Dimens.borderInputMedium),
                    side: BorderSide(
                      color: AppColors.google,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('lib/res/assets/google.png'),
                      height: 24.0,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: Dimens.marginSmall,
                    ),
                    Text(
                      'Login with google',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: Dimens.itemTextTitle),
                    ),
                  ],
                ),
                onPressed: () => {
                  signInWithGoogle().whenComplete(() {
                    Navigator.of(context).pushNamed('/tabbar');
                  })
                },
              ),
            ),
            SizedBox(
              height: Dimens.marginGroupView,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/register');
              },
              child: RichText(
                text: TextSpan(
                    style: AppStyle.REGISTER_TEXT,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'New user? ',
                          style: TextStyle(
                            fontSize: Dimens.itemTextSubTitle,
                            fontWeight: FontWeight.normal,
                          )),
                      TextSpan(
                        text: 'Register now',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: Dimens.itemTextTitle,
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
