import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/blocs/discovery_indicator_bloc.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:anvi/src/ui/custom_views/tags/tags.dart';
import 'package:anvi/src/ui/custom_views/titles/moudle_title.dart';
import 'package:anvi/src/ui/items/discovery_item.dart';
import 'package:anvi/src/ui/screens/discovery_all_screen.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DiscoveryView extends StatelessWidget {
  final List<DiscoveryItem> _listDiscoverItem = SampleData.getDiscoveryList();

  @override
  Widget build(BuildContext context) {
    DiscoveryIndicatorBloc _bloc = DiscoveryIndicatorBloc();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: Dimens.marginCommon,
        ),
        MainMoudleTitle(
          title: 'Discovery',
          onTapShowAll: () {
            print('show all');
            Navigator.of(context).pushNamed(DiscoveryAllScreen.routeName);
          },
        ),
        SizedBox(
          height: Dimens.marginMoudleTitle,
        ),
        Stack(
          children: <Widget>[
            Container(
              // margin: EdgeInsets.only(
              //     left: Dimens.safeAreaDistance,
              //     right: Dimens.safeAreaDistance),
              child: CarouselSlider.builder(
                aspectRatio: 3 / 2,
                autoPlay: false,
                reverse: false,
                initialPage: 0,
                viewportFraction: 1.0,
                itemCount: _listDiscoverItem.length,
                itemBuilder: (context, index) => DiscoveryViewItem(
                  context: context,
                  item: _listDiscoverItem[index],
                ),
                onPageChanged: (index) => _bloc.selectItem(index),
              ),
            ),
            Positioned(
                bottom: Dimens.marginSmall,
                left: Dimens.marginLarge,
                right: 0.0,
                child: StreamBuilder(
                    stream: _bloc.getStream,
                    builder: (context, snapshot) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: _getListIndicator(
                            _listDiscoverItem.length, snapshot.data),
                      );
                    }))
          ],
        ),
      ],
    );
  }

  void selectItem(String id) {
    //Navigate to detail page
  }

  List<Widget> _getListIndicator(int count, currentIndex) {
    List<Widget> list = List();
    for (int i = 0; i < count; i++) {
      list.add(_indicatorItem(i == currentIndex));
    }
    return list;
  }

  Widget _indicatorItem(isSelected) {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected
              ? AppColors.indicatorSelected
              : AppColors.indicatorUnselected),
    );
  }
}
