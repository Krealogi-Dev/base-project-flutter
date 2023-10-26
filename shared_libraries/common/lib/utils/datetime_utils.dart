import 'package:dependencies/intl/intl.dart';
import 'package:flutter/material.dart';

class DateTimeUtils {
  static const List<String> _day = <String>[
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu',
    'Minggu'
  ];
  static const List<String> _monthShort = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'Mei',
    'Jun',
    'Jul',
    'Agu',
    'Sep',
    'Okt',
    'Nov',
    'Des'
  ];

  static const List<String> _monthLong = <String>[
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  static List<String> get dayList => _day;
  static List<String> get monthShortList => _monthShort;
  static List<String> get monthLongList => _monthLong;

  static String convertDateAndTime(
    DateTime convertToDate, {
    bool isMonthShort = true,
    bool isDay = false,
    bool isTime = false,
    String format = 'HH:mm',
  }) {
    convertToDate = convertToDate.toLocal();
    return '${isDay ? '${dayList[convertToDate.weekday - 1]}, ' : ''}'
        '${convertToDate.day} '
        '${isMonthShort ? monthShortList[convertToDate.month - 1] : monthLongList[convertToDate.month - 1]} '
        '${convertToDate.year}'
        '${isTime ? ', ${DateFormat(format, 'ID').format(convertToDate)}' : ''}';
  }

  static String convertDateAndTimeFormatted(
    DateTime convertToDate, {
    String format = 'HH:mm',
  }) {
    return DateFormat(format, 'ID').format(convertToDate.toLocal());
  }

  static String convertDateRange(DateTimeRange dateTimeRange,
      {bool isMonthShort = true}) {
    String startDate = convertDateAndTime(dateTimeRange.start);
    String endDate = convertDateAndTime(dateTimeRange.end);
    return '$startDate - $endDate';
  }
}

final DateTimeUtils dtUtils = DateTimeUtils();
