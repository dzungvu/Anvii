import 'package:anvi/res/colors.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkWhite,
      child: Center(
        child: Text("Bookmark screen", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}