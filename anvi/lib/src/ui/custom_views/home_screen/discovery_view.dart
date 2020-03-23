import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/res/styles.dart';
import 'package:anvi/src/blocs/discovery_indicator_bloc.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DiscoveryView extends StatelessWidget {
  List<DiscoveryItem> _listDiscoverItem = List();

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    DiscoveryIndicatorBloc _bloc = DiscoveryIndicatorBloc();
    _listDiscoverItem.add(DiscoveryItem(
        id: '0',
        imageUrl:
            'https://www.pandemic-legion.pl/forums/uploads/monthly_2017_07/super_anime_banner_collage_by_bellebelle410-d505zns.jpg.a2c1a77923e50a39450426be855f8d8d.jpg'));
    _listDiscoverItem.add(DiscoveryItem(
        id: '1',
        imageUrl:
            'https://c4.wallpaperflare.com/wallpaper/651/144/865/anime-crossover-albedo-overlord-ash-ketchum-wallpaper-preview.jpg'));
    _listDiscoverItem.add(DiscoveryItem(
        id: '2',
        imageUrl:
            'https://i2.wp.com/news.qoo-app.com/wp-content/uploads/2017/12/17122607442160.jpg'));
    _listDiscoverItem.add(DiscoveryItem(
        id: '3',
        imageUrl:
            'https://d2jcw5q7j4vmo4.cloudfront.net/ZVSDLK0DIT3uzOGY5B2-mNaTbK_9SE7nswGy2oDTuF2zNPzi6_dTNoxVDopdabh7tQ=w1440-h620'));
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: Dimens.safeAreaDistance),
          child: Text(
            'Discovery',
            style: AppStyle.MAIN_MOUDLE_TITLE,
          ),
        ),
        SizedBox(
          height: Dimens.marginMoudleTitle,
        ),
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: Dimens.safeAreaDistance,
                  right: Dimens.safeAreaDistance),
              child: CarouselSlider.builder(
                aspectRatio: 3 / 1,
                autoPlay: true,
                reverse: false,
                initialPage: 0,
                viewportFraction: 0.6,
                itemCount: _listDiscoverItem.length,
                itemBuilder: (context, index) =>
                    getItemView(context, _listDiscoverItem[index]),
                onPageChanged: (index) => _bloc.selectItem(index),
              ),
            ),
            Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: StreamBuilder(
                    stream: _bloc.getStream,
                    builder: (context, snapshot) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _getListIndicator(
                            _listDiscoverItem.length, snapshot.data),
                      );
                    }))
          ],
        ),
      ],
    );
  }

  Widget getItemView(BuildContext context, DiscoveryItem item) {
    return GestureDetector(
      onTap: () => selectItem(item.id),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            item.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
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
          color: isSelected ? AppColors.indicatorColor : AppColors.black80),
    );
  }
}
