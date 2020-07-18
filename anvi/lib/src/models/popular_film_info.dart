import 'package:flutter/material.dart';

class PopularFilmInfo {
  final String id;
  final String title;
  final String authorName;
  final String imageUrl;

  PopularFilmInfo({
    @required this.id,
    @required this.title,
    @required this.authorName,
    @required this.imageUrl,
  });
}
