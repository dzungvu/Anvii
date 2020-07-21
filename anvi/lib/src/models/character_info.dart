import 'package:flutter/material.dart';

class CharacterInfo {
  final String id;
  final String characterName;
  final String characterImage;
  final String shortDes;
  final String longDes;

  CharacterInfo({
    @required this.id,
    @required this.characterName,
    @required this.characterImage,
    @required this.shortDes,
    @required this.longDes,
  });
}
