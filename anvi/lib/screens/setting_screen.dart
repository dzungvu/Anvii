import 'package:anvi/res/colors.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: Center(
        child: Text("Setting screen", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}