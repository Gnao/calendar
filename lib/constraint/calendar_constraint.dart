import 'package:calendar/extension/datetime_extension.dart';
import 'package:flutter/material.dart';

/// 有効表示内の最初の日付
final DateTime calendarStartDay = DateTime(
  DateTimeExtension.today.year - 1,
  DateTimeExtension.today.month,
  DateTimeExtension.today.day,
);

/// 有効表示内の最後の日付
final DateTime calendarEndDay = DateTime(
  DateTimeExtension.today.year + 1,
  DateTimeExtension.today.month,
  DateTimeExtension.today.day,
);

/// 始まりの曜日
const startWeekType = WeekType.sunday;

/// 曜日
enum WeekType {
  /// 月曜日
  monday,

  /// 火曜日
  tuesday,

  /// 水曜日
  wednesday,

  /// 木曜日
  thursday,

  /// 金曜日
  friday,

  /// 土曜日
  saturday,

  /// 日曜日
  sunday,
}

/// 曜日のenumの拡張
extension WeekTypeExtension on WeekType {
  /// 曜日の配列を取得
  static List<WeekType> get weekTypeList {
    // 曜日の配列を作成
    final list = [...WeekType.values];
    // 曜日の始まりが配列がどこにあるか検索
    final start = list.indexOf(startWeekType);
    // 曜日の始まりから日曜日までを取得
    final addList = list.sublist(start);
    // 曜日の始まりから日曜日までを先頭に持ってくる
    list
      ..removeRange(start, list.length)
      ..insertAll(0, addList);

    return list;
  }

  /// 曜日を数値で返す
  int get value {
    switch (this) {
      case WeekType.monday:
        return DateTime.monday;
      case WeekType.tuesday:
        return DateTime.tuesday;
      case WeekType.wednesday:
        return DateTime.wednesday;
      case WeekType.thursday:
        return DateTime.thursday;
      case WeekType.friday:
        return DateTime.friday;
      case WeekType.saturday:
        return DateTime.saturday;
      case WeekType.sunday:
        return DateTime.sunday;
    }
  }

  /// 数値から曜日を取得
  ///
  /// * param [value] DateTimeから取得した曜日の数値
  static WeekType valueToWeekType(int value) {
    switch (value) {
      case DateTime.monday:
        return WeekType.monday;
      case DateTime.tuesday:
        return WeekType.tuesday;
      case DateTime.wednesday:
        return WeekType.wednesday;
      case DateTime.thursday:
        return WeekType.thursday;
      case DateTime.friday:
        return WeekType.friday;
      case DateTime.saturday:
        return WeekType.saturday;
      case DateTime.sunday:
        return WeekType.sunday;
      default:
        return WeekType.monday;
    }
  }

  /// 曜日を数値で返す
  String get name {
    switch (this) {
      case WeekType.monday:
        return '月';
      case WeekType.tuesday:
        return '火';
      case WeekType.wednesday:
        return '水';
      case WeekType.thursday:
        return '木';
      case WeekType.friday:
        return '金';
      case WeekType.saturday:
        return '土';
      case WeekType.sunday:
        return '日';
    }
  }

  /// 曜日を色で返す
  Color get color {
    switch (this) {
      case WeekType.monday:
      case WeekType.tuesday:
      case WeekType.thursday:
      case WeekType.wednesday:
      case WeekType.friday:
        return Colors.black;
      case WeekType.saturday:
        return Colors.blue;
      case WeekType.sunday:
        return Colors.red;
    }
  }
}
