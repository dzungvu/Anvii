import 'package:anvi/res/colors.dart';
import 'package:anvi/src/ui/screens/tabbars/bookmark_screen.dart';
import 'package:anvi/src/ui/screens/tabbars/home_screen.dart';
import 'package:anvi/src/ui/screens/tabbars/search_screen.dart';
import 'package:anvi/src/ui/screens/tabbars/setting_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.darkWhite,
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.search),
              ),
              Tab(
                icon: Icon(Icons.bookmark),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
            ],
            indicatorColor: AppColors.transparent,
            labelColor: AppColors.black,
            unselectedLabelColor: AppColors.ddarkWhite,
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              SearchScreen(),
              BookmarkScreen(),
              SettingScreen(),
            ],
          )),
    );
  }

  Widget buildBody(int index) {
    if (index == 0) {
      return HomeScreen();
    } else if (index == 1) {
      return (BookmarkScreen());
    } else if (index == 2) {
      return (SettingScreen());
    } else {
      return Container();
    }
  }
}
