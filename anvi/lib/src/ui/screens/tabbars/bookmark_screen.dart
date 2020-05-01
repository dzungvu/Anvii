import 'package:anvi/res/colors.dart';
import 'package:anvi/src/ui/items/bookmark_title_item.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BookmarkTitleItem(),
          ],
        ),
      ),
    );
  }
}
