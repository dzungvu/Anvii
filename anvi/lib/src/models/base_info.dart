import 'package:flutter/material.dart';

class BaseInfo {
  final String thumbnailUrl;
  final String animeName;
  final String authorName;
  final int status;
  final String publishTime;

  BaseInfo({
    @required this.thumbnailUrl,
    @required this.animeName,
    @required this.authorName,
    @required this.status,
    @required this.publishTime,
  });
}
