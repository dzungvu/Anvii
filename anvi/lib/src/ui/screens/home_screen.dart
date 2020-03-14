import 'package:anvi/res/colors.dart';
import 'package:anvi/src/models/base_info.dart';
import 'package:anvi/src/ui/custom_views/app_bar_home.dart';
import 'package:anvi/src/ui/custom_views/home_screen/discovery_view.dart';
import 'package:anvi/src/ui/custom_views/home_screen/popular_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<BaseInfo> infos = List();

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 10; i++) {
      infos.add(BaseInfo(
          thumbnailUrl:
              'https://f0.pngfuel.com/png/666/119/male-anime-character-with-headphones-png-clip-art-thumbnail.png',
          authorName: 'Shino ABe',
          animeName: 'Oto beta version run crash $i',
          status: 0));
    }

    return Scaffold(
        appBar: AppBarHome(title: 'Home', onSearchPress: () => {}),
        body: Container(
          color: AppColors.primaryColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DiscoveryView(),
                PopularView(infos: infos),
              ],
            ),
          ),
        ));
  }
}
