import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:flutter/material.dart';

class Sticker extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String content;

  Sticker({
    Key key,
    @required this.imageUrl,
    @required this.title,
    @required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 40,
          ),
          SizedBox(
            width: Dimens.marginSmall,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: Dimens.itemTextSubTitle,
                    color: AppColors.lightBlack,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Flexible(
                child: Text(
                  content,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
