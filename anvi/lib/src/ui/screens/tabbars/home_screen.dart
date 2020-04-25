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
          thumbnailUrl: 'https://i.redd.it/cm7brirmz8921.jpg',
          authorName: 'Shino ABe',
          animeName: 'Oto beta version run crash $i',
          status: 0));
    }

    return Scaffold(
      body: Container(
        color: AppColors.white,
        child: ListView.builder(
          itemBuilder: (context, index) => _getItemAt(index),
          itemCount: 4,
        ),
      ),
    );
  }

  Widget _getItemAt(int index) {
    switch (index) {
      case 0:
        return DiscoveryView();
      case 1:
        return PopularView(infos: infos);
      default:
        return Container();
    }
  }
}
