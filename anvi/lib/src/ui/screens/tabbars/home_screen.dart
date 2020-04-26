import 'package:anvi/res/colors.dart';
import 'package:anvi/src/models/base_info.dart';
import 'package:anvi/src/ui/custom_views/home_screen/character_view.dart';
import 'package:anvi/src/ui/custom_views/home_screen/discovery_view.dart';
import 'package:anvi/src/ui/custom_views/home_screen/popular_view.dart';
import 'package:anvi/src/ui/custom_views/home_screen/film_view.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<BaseInfo> infos = List();

  @override
  Widget build(BuildContext context) {
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
        return PopularView(
          infos: SampleData.getBaseInfoList(),
        );
      case 2:
        return FilmView(
          infos: SampleData.getFilmList(),
        );
      case 3:
        return CharacterView(
          infos: SampleData.getListCharacter(),
        );
      default:
        return Container();
    }
  }
}
