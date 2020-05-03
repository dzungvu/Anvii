import 'package:anvi/res/colors.dart';
import 'package:anvi/res/dimens.dart';
import 'package:anvi/src/models/setting_item_info.dart';
import 'package:anvi/src/models/user_info.dart';
import 'package:anvi/src/ui/items/setting_content_item.dart';
import 'package:anvi/src/ui/items/setting_title_item.dart';
import 'package:anvi/src/utils/sample_data.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final List<SettingItemInfo> settingList = [
    SettingItemInfo(id: '0', isTitle: true, title: 'Application'),
    SettingItemInfo(id: '1', isTitle: false, title: 'Notification and sound'),
    SettingItemInfo(id: '2', isTitle: false, title: 'Privacy'),
    SettingItemInfo(id: '3', isTitle: false, title: 'Language'),
    SettingItemInfo(id: '4', isTitle: false, title: 'About'),
    SettingItemInfo(id: '5', isTitle: true, title: 'Account'),
    SettingItemInfo(id: '6', isTitle: false, title: 'Profile'),
    SettingItemInfo(id: '7', isTitle: false, title: 'Change password'),
    SettingItemInfo(id: '8', isTitle: false, title: 'Notification'),
    SettingItemInfo(id: '9', isTitle: false, title: 'Log out'),
  ];
  List<Widget> _getSettingList() {
    List<Widget> listWidget = [];
    for (SettingItemInfo item in settingList) {
      if (item.isTitle) {
        listWidget.add(SettingTitleItem(itemData: item));
      } else {
        listWidget.add(SettingContentItem(itemData: item));
      }
    }
    return listWidget;
  }

  @override
  Widget build(BuildContext context) {
    var listWidget = _getSettingList();
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: SettingHeader(extendHeight: 250),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (_, index) => listWidget[index],
                childCount: listWidget.length),
          ),
        ],
      ),
    );
  }
}

class SettingHeader extends SliverPersistentHeaderDelegate {
  final UserInfo _userInfo = SampleData.getUserInfo();
  final double extendHeight;
  final double minHeight = 100;
  SettingHeader({@required this.extendHeight});

  double _getOpacity(double shrinkOffset) {
    double value = shrinkOffset / (extendHeight - minHeight);
    if (value > 1) {
      return 1;
    }
    return value;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        image: DecorationImage(
          image: NetworkImage(_userInfo.avatar),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            color:
                AppColors.primaryColor.withOpacity(_getOpacity(shrinkOffset)),
          ),
          Padding(
            padding: EdgeInsets.all(Dimens.marginCommon),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _userInfo.username,
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimens.itemTextTitle,
                        ),
                      ),
                      Text(
                        _userInfo.email,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: Dimens.itemTextSubTitle,
                        ),
                      ),
                      Text(
                        '${_userInfo.gender} - ${_userInfo.age}',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: Dimens.itemTextSubTitle,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: AppColors.white,
                  size: 32,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => extendHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
