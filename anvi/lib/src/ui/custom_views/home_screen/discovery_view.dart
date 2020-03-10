import 'package:anvi/res/colors.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DiscoveryView extends StatelessWidget {
  List<DiscoveryItem> _listDiscoverItem = List();

  @override
  Widget build(BuildContext context) {
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
    return Stack(
      children: <Widget>[
        Container(
          child: CarouselSlider.builder(
            aspectRatio: 3 / 1,
            autoPlay: true,
            reverse: false,
            initialPage: 0,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 300),
            itemCount: _listDiscoverItem.length,
            itemBuilder: (context, index) =>
                getItemView(context, _listDiscoverItem[index]),
          ),
        ),
        Positioned(
          left: 0.0,
          top: 0.0,
          bottom: 0.0,
          child: Container(
            color: AppColors.black80,
            child: Icon(
              Icons.arrow_left,
              color: Colors.white,
              size: 32.0,
            ),
          ),
        ),
        Positioned(
          right: 0.0,
          top: 0.0,
          bottom: 0.0,
          child: Container(
            color: AppColors.black80,
            child: Icon(
              Icons.arrow_right,
              color: Colors.white,
              size: 32.0,
            ),
          ),
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
}
