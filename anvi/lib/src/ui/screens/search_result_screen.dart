import 'package:anvi/src/blocs/search_result_bloc.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/ui/custom_views/app_bar_content.dart';
import 'package:anvi/src/ui/custom_views/horizontal_radio.dart';
import 'package:anvi/src/ui/items/character_item.dart';
import 'package:anvi/src/ui/items/film_item.dart';
import 'package:anvi/src/ui/screens/characters_detail_screen.dart';
import 'package:anvi/src/ui/screens/film_detail_screen.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends StatelessWidget {
  static const routeName = '/searchResult';

  @override
  Widget build(BuildContext context) {
    final String keyword = ModalRoute.of(context).settings.arguments;
    var _listData = SampleData.getSearchResult();
    var _searchResultBloc = SearchResultBloc();
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
            delegate: SearchResultAllHeader(bloc: _searchResultBloc),
            floating: true,
          ),
          StreamBuilder(
              stream: _searchResultBloc.stream,
              builder: (context, snapshot) {
                var _currentIndex = 0;
                snapshot.data == null
                    ? _currentIndex = 0
                    : _currentIndex = snapshot.data;
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (_, index) => _currentIndex == 0
                        ? _getFLimItemAt(context, _listData.listFilm[index])
                        : _getCharacterItemAt(
                            context, _listData.listCharacter[index]),
                    childCount: _currentIndex == 0
                        ? _listData.listFilm.length
                        : _listData.listCharacter.length,
                  ),
                );
              })
        ],
      ),
    );
  }

  Widget _getFLimItemAt(BuildContext context, FilmInfo info) {
    return FilmItem(
      itemData: info,
      itemClick: () {
        Navigator.of(context).pushNamed(
          FilmDetailScreen.routeName,
          arguments: info.id,
        );
      },
    );
  }

  Widget _getCharacterItemAt(BuildContext context, CharacterInfo info) {
    return CharacterItem(
      itemData: info,
      itemClick: () {
        Navigator.of(context).pushNamed(
          CharacterDetailScreen.routeName,
          arguments: info.id,
        );
      },
    );
  }
}

class SearchResultAllHeader extends SliverPersistentHeaderDelegate {
  final List<String> listTitle = ['Films', 'Characters'];
  final SearchResultBloc bloc;

  SearchResultAllHeader({@required this.bloc});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: HorizontalRadio(
        listData: listTitle,
        onPress: (index) {
          bloc.selectItem(index);
        },
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
