import 'package:anvi/src/ui/custom_views/app_bar_content.dart';
import 'package:anvi/src/ui/custom_views/horizontal_radio.dart';
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: SearchResultAllHeader(),
          ),
        ],
      ),
    );
  }
}

class SearchResultAllHeader extends SliverPersistentHeaderDelegate {
  final List<String> listTitle = ['Films', 'Characters'];

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: HorizontalRadio(
        listData: listTitle,
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
