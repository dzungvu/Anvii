import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

class DataSupporter {
  static List<NumberPickerColumn> getAgeData() {
    var data = [NumberPickerColumn(
      begin: 1,
      end: 99,
      initValue: 20,
    )];
    return data;
  }
}
