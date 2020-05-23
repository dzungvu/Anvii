import 'package:flutter/material.dart';

class Point {
  final String id;
  final String name;
  final String point;
  final String image;

  Point({
    Key key,
    @required this.id,
    @required this.name,
    @required this.point,
    @required this.image,
  });
}
