import 'package:anvi/src/ui/custom_views/app_bar_content.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends StatelessWidget {
  static const routeName = '/searchResult';

  @override
  Widget build(BuildContext context) {
    final String keyword = ModalRoute.of(context).settings.arguments;
    //Todo: Search the keyword to return list of film and character
    return Scaffold(
      appBar: AppBarContent(
        titile: keyword,
        onBackPress: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
