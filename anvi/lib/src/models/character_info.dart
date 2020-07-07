import 'package:flutter/material.dart';

class CharacterInfo {
  final String characterName;
  final String characterImage;
  final String shortDes;
  final String longDes;

  CharacterInfo({
    @required this.characterName,
    @required this.characterImage,
    @required this.shortDes,
    @required this.longDes,
  });
}
