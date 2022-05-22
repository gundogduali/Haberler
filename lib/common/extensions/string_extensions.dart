import 'package:intl/intl.dart';

extension StringExtensions on String {
  String dateParse() {
    final dateString = substring(0, length - 1);
    var startTime = DateTime.parse(dateString);
    return DateFormat("dd-MM-y").format(startTime);
  }
}
