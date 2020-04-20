import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/res/styles.dart';
import 'package:anvi/src/ui/custom_views/custom_textfield.dart';
import 'package:anvi/src/utils/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _saveUser(FacebookLoginResult result) async {
      final token = result.accessToken.token;
      print (token);
      final graphResponse = await http.get(
          'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture&access_token=${token}');
      final profile = jsonDecode(graphResponse.body);
      print (profile);
      
    }

    void _showLoggedInUI() {
      Navigator.of(context).pushNamed('/tabbar');
    }

    void _showCancelledMessage() {}

    void _showErrorOnUI(String error) {}

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'lib/res/assets/loginbg.png',
                  ),
                  fit: BoxFit.cover),
              color: AppColors.loginbg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: Dimens.loginMarginTopContent,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image(
                  image: AssetImage('lib/res/assets/anviilogo.png'),
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    top: Dimens.marginGroupView,
                    left: Dimens.safeAreaDistance,
                    right: Dimens.safeAreaDistance,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: Dimens.safeAreaDistance),
                      Text(
                        'Hello',
                        style: TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 45.0,
                        ),
                      ),
                      Text('Sign into your account',
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: Dimens.safeAreaDistance,
                          right: Dimens.safeAreaDistance,
                          top: Dimens.marginGroupViewLarge,
                        ),
                        child: CustomTextField(
                          hintText: 'Username',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: Dimens.safeAreaDistance,
                          right: Dimens.safeAreaDistance,
                          top: Dimens.safeAreaDistance,
                        ),
                        child: CustomTextField(hintText: 'Password'),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: Dimens.safeAreaDistance,
                            top: Dimens.safeAreaSmall,
                          ),
                          child: Text('Forgot password?'),
                        ),
                      ),
                      RaisedButton(
                        color: AppColors.primaryColor,
                        onPressed: () =>
                            Navigator.pushNamed(context, '/tabbar'),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Dimens.borderInputLarge),
                            side: BorderSide(color: AppColors.primaryColor)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: Dimens.safeAreaDistance,
                              right: Dimens.safeAreaDistance),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: Dimens.itemTextTitle),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimens.marginGroupView,
                      ),
                      Text(
                        'Or sign in using',
                        style: AppStyle.REGISTER_TEXT,
                      ),
                      SizedBox(
                        height: Dimens.safeAreaItem,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              signInWithGoogle().whenComplete(() {
                                Navigator.of(context).pushNamed('/tabbar');
                              });
                            },
                            child: Image.asset(
                              'lib/res/assets/google.png',
                              height: 32.0,
                            ),
                          ),
                          SizedBox(
                            width: Dimens.marginGroupView,
                          ),
                          FlatButton(
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
                            child: Image.asset(
                              'lib/res/assets/facebook.png',
                              height: 32.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimens.marginGroupView),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/register');
                },
                child: RichText(
                  text: TextSpan(
                      style: AppStyle.REGISTER_TEXT,
                      children: <TextSpan>[
                        TextSpan(text: 'Don\'t have an account? '),
                        TextSpan(
                            text: 'Register now',
                            style: TextStyle(color: AppColors.primaryColor))
                      ]),
                ),
              ),
              SizedBox(height: Dimens.marginGroupView),
            ],
          ),
        ),
      ),
    );
  }
}
