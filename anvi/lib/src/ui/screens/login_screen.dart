import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/res/styles.dart';
import 'package:anvi/src/ui/custom_views/custom_textfield.dart';
import 'package:anvi/src/ui/screens/home_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
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
                height: Dimens.safeAreaDistance,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.navigate_before),
                    label: Text('Back')),
              ),
              SizedBox(
                height: Dimens.marginGroupViewLarge,
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(Dimens.safeAreaDistance,
                            Dimens.marginGroupView, Dimens.safeAreaDistance, 0),
                        child: ButtonTheme(
                          minWidth: MediaQuery.of(context).size.width,
                          height: Dimens.buttonHeightLarge,
                          child: RaisedButton(
                            color: AppColors.primaryColor,
                            onPressed: () =>
                                Navigator.pushNamed(context, MyHomePage.routeName),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Dimens.borderInputLarge),
                                side:
                                    BorderSide(color: AppColors.primaryColor)),
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
                        ),
                      ),
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
