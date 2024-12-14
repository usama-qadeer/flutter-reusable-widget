// ignore_for_file: unnecessary_this

import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  // Format the DateTime as a string
  String toFormattedString(String format) {
    final DateFormat dateFormat = DateFormat(format);
    return dateFormat.format(this);
  }

  // Check if the current date is today
  bool get isToday {
    final now = DateTime.now();
    return now.year == this.year &&
        now.month == this.month &&
        now.day == this.day;
  }

  // Check if the current date is tomorrow
  bool get isTomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return tomorrow.year == this.year &&
        tomorrow.month == this.month &&
        tomorrow.day == this.day;
  }

  // Add business days
  DateTime addBusinessDays(int days) {
    DateTime date = this;
    int addedDays = 0;

    while (addedDays < days) {
      date = date.add(const Duration(days: 1));
      if (date.weekday != DateTime.saturday &&
          date.weekday != DateTime.sunday) {
        addedDays++;
      }
    }
    return date;
  }
}
