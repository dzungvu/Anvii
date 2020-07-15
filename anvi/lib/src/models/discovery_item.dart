import 'package:flutter/material.dart';

class DiscoveryItem {
  final String id;
  final String imageUrl;
  final int type;
  final title;
  final description;

  DiscoveryItem({
    @required this.id,
    @required this.imageUrl,
    @required this.type,
    @required this.title,
    @required this.description,
  });
}
