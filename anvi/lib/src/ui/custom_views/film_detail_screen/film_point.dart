import 'package:anvi/src/models/point.dart';
import 'package:anvi/src/models/production_info.dart';
import 'package:anvi/src/models/writer_info.dart';
import 'package:anvi/src/ui/custom_views/tags/sticker.dart';
import 'package:flutter/material.dart';

class FilmPoint extends StatelessWidget {
  final Point point;
  final WriterInfo writerInfo;
  final ProductionInfo productionInfo;

  FilmPoint({
    Key key,
    @required this.point,
    @required this.writerInfo,
    @required this.productionInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Sticker(
            imageUrl: point.image,
            content: point.point,
            title: point.name,
          ),
        ),
        Expanded(
          flex: 3,
          child: Sticker(
            imageUrl: writerInfo.imageUrl,
            title: 'Writer',
            content: writerInfo.name,
          ),
        ),
        Expanded(
          flex: 3,
          child: Sticker(
            imageUrl: productionInfo.imageUrl,
            title: 'Production',
            content: productionInfo.name,
          ),
        ),
      ],
    );
  }
}
