import 'package:anvi/src/blocs/tab_bloc.dart';
import 'package:anvi/src/ui/custom_views/app_bar_home.dart';
import 'package:anvi/src/ui/screens/bookmark_screen.dart';
import 'package:anvi/src/ui/screens/home_screen.dart';
import 'package:anvi/src/ui/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TabBloc bloc = TabBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) => bloc.selectTab(index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail), title: Text('Message')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
      body: StreamBuilder(
        stream: bloc.tabStream,
        builder: (context, snapshot) => buildBody(snapshot.data),
      ),
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
