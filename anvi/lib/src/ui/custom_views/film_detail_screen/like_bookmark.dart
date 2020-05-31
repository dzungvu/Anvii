import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/ui/custom_views/tags/bookmark_tag.dart';
import 'package:anvi/src/ui/custom_views/tags/heart_tag.dart';
import 'package:flutter/material.dart';

class LikeBookMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          HeartTag(),
          SizedBox(
            width: Dimens.marginCommon,
          ),
          BookmarkTag(),
        ],
      ),
    );
  }
}
