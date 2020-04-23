import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

class DataSupporter {
  static List<NumberPickerColumn> getAgeData(initValue) {
    var data = [NumberPickerColumn(
      begin: 1,
      end: 99,
      initValue: initValue,
    )];
    return data;
  }
}
