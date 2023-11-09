import 'package:flutter/material.dart';
import 'package:your_healthy/utils/extensions/date_time_extentions.dart';

extension DateRangeExtentions on DateTimeRange {
  String get displayString {
    final startString = start.formatString;
    final endString = end.formatString;
    return '$startString - $endString';
  }
}
