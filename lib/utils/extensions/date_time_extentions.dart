import 'package:intl/intl.dart';

extension DateTimeExtentions on DateTime {
  String get formatString {
    return DateFormat('dd/MM/yyyy').format(this);
  }
}
