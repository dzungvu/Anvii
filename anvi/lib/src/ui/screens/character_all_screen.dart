import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/ui/custom_views/app_bar_content.dart';
import 'package:anvi/src/ui/items/character_item.dart';
import 'package:anvi/src/ui/screens/characters_detail_screen.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterAllScreen extends StatelessWidget {
  static const routName = '/characterAll';
  final List<CharacterInfo> _listCharacter = SampleData.getListCharacter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarContent(
        titile: 'Characters',
        onBackPress: () {
          Navigator.of(context).pop();
        },
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => _getItemAt(index, context),
        itemCount: _listCharacter.length + 1,
      ),
    );
  }

  Widget _getItemAt(int index, BuildContext context) {
    if (index == _listCharacter.length) {
      return SizedBox(
        height: Dimens.marginGroupView,
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.marginCommon,),
      child: CharacterItem(
        itemData: _listCharacter[index],
        itemClick: () {
          Navigator.of(context).pushNamed(
            CharacterDetailScreen.routeName,
            arguments: _listCharacter[index].id,
          );
        },
      ),
    );
  }
}
