import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:anvi/src/ui/custom_views/tags/tags.dart';
import 'package:anvi/src/ui/screens/discovery_film_detail_screen.dart';
import 'package:flutter/material.dart';

class DiscoveryViewItem extends StatelessWidget {
  final DiscoveryItem item;
  final BuildContext context;
  final double height;
  final double width;

  DiscoveryViewItem({
    Key key,
    @required this.item,
    @required this.context,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double actualHeight;
    if (height != null) {
      actualHeight = height;
    } else {
      actualHeight = 200;
    }

    double actualWidth;
    if (width != null) {
      actualWidth = width;
    } else {
      actualWidth = MediaQuery.of(context).size.width;
    }
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).pushNamed(
          DiscoveryFilmDetailScreen.routeName,
          arguments: item,
        ),
      },
      child: Container(
        width: actualWidth,
        height: actualHeight,
        margin: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(item.imageUrl),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: Dimens.marginCommon),
              color: AppColors.blurBackground,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Tags(
                    tag: 'Discovery',
                  ),
                  SizedBox(
                    height: Dimens.marginSmall,
                  ),
                  Text(
                    item.title,
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.bigTitle,
                    ),
                  ),
                  Text(
                    item.description,
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: Dimens.itemTextSubTitle,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
