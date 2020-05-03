import 'package:flutter/material.dart';

class SettingItemInfo {
  final String title;
  final String id;
  final bool isTitle;

  SettingItemInfo(
      {Key key,
      @required this.title,
      @required this.id,
      @required this.isTitle});
}
