import 'package:anvi/src/models/base_info.dart';
import 'package:flutter/material.dart';

class FilmInfo extends BaseInfo {
  final String id;
  final String productionName;
  final int totalEpisode;
  final int currentEpisode;

  final String authorName;
  final String animeName;
  final String thumbnailUrl;
  final int status;
  final String publishTime;

  FilmInfo({
    @required this.id,
    @required this.productionName,
    @required this.totalEpisode,
    @required this.currentEpisode,
    @required this.thumbnailUrl,
    @required this.animeName,
    @required this.authorName,
    @required this.status,
    @required this.publishTime,
  }) : super(
          thumbnailUrl: thumbnailUrl,
          animeName: animeName,
          authorName: authorName,
          status: status,
          publishTime: publishTime,
        );
}
