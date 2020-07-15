import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/res/styles.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:anvi/src/ui/items/discovery_item.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class DiscoveryAllScreen extends StatelessWidget {
  static const String routeName = '/discoveryAll';

  //Todo: Call api get all discovery item
  final List<DiscoveryItem> listData = SampleData.getDiscoveryList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) => _getItemAt(index, context),
          itemCount: listData.length + 1,
        ),
      ),
    );
  }

  Widget _getItemAt(int index, BuildContext context) {
    if (index == 0) {
      return _getHeader();
    } else {
      return _getItem(index, context);
    }
  }

  Widget _getHeader() {
    return Container(
      padding: EdgeInsets.all(
        Dimens.marginCommon,
      ),
      child: Text(
        'Discovery',
        style: AppStyle.MAIN_MOUDLE_TITLE,
      ),
    );
  }

  Widget _getItem(index, context) {
    return DiscoveryViewItem(
      context: context,
      item: listData[index - 1],
      height: 200,
    );
  }
}
