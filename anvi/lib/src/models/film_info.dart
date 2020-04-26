import 'package:anvi/src/models/base_info.dart';
import 'package:flutter/material.dart';

class FilmInfo extends BaseInfo {
  final String productionName;
  final int totalEpisode;
  final int currentEpisode;
  final BaseInfo baseInfo;

  FilmInfo({
    @required this.productionName,
    @required this.totalEpisode,
    @required this.currentEpisode,
    @required this.baseInfo,
  }) {
    this.animeName = baseInfo.animeName;
    this.authorName = baseInfo.authorName;
    this.thumbnailUrl = baseInfo.thumbnailUrl;
    this.status = baseInfo.status;
  }
}
