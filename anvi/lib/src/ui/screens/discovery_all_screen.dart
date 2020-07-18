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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _getHeader(context),
            Expanded(
              flex: 1,
              child: Container(
                child: ListView.builder(
                  itemBuilder: (context, index) => _getItemAt(index, context),
                  itemCount: listData.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getItemAt(int index, BuildContext context) {
    return _getItem(index, context);
  }

  Widget _getHeader(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(Dimens.marginSmall),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
            iconSize: Dimens.backIconSize,
            color: AppColors.iconColorWithoutAppbar,
          ),
        ),
        Container(
          child: Text(
            'Discovery',
            style: AppStyle.MAIN_MOUDLE_TITLE,
          ),
        ),
      ],
    );
  }

  Widget _getItem(index, context) {
    return DiscoveryViewItem(
      context: context,
      item: listData[index],
      height: 200,
    );
  }
}
