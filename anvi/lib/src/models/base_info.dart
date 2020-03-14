import 'package:flutter/material.dart';

class BaseInfo {
  String thumbnailUrl;
  String animeName;
  String authorName;
  int status;

  BaseInfo(
      {@required thumbnailUrl,
      @required animeName,
      @required authorName,
      @required status}) {
    this.thumbnailUrl = thumbnailUrl;
    this.animeName = animeName;
    this.authorName = authorName;
    this.status = status;
  }
}
