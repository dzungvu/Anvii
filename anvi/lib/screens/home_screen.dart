import 'package:anvi/custom_views/app_bar_home.dart';
import 'package:anvi/custom_views/home_screen/discovery_view.dart';
import 'package:anvi/res/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarHome(title: 'Home', onSearchPress: () => {}),
        body: Container(
          color: AppColors.primaryColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DiscoveryView()
              ],
            ),
          ),
        ));
  }
}
