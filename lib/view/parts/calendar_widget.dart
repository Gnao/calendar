import 'package:calendar/constraint/calendar_constraint.dart';
import 'package:calendar/model/data/calendar_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// カレンダー部分のWidget
class CalendarWidget extends StatelessWidget {
  /// カレンダー部分のWidgetのコンストラクタ
  ///
  /// * param [calendarList] カレンダー情報の入った２次元配列
  CalendarWidget({super.key, required this.calendarList});

  /// カレンダー情報の入った２次元配列
  final List<List<CalendarData>> calendarList;

  // 曜日の配列を取得
  final _weekTypeList = WeekTypeExtension.weekTypeList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 曜日
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final weekType in _weekTypeList) ...[
              // 曜日ごとのウィジェットの生成
              weekTypeWidget(weekType),
            ],
          ],
        ),

        // 日付
        // リストから1週間ごとの情報を取得
        for (final week in calendarList) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1週間の情報から1日ごとの情報を取得
              for (final day in week) ...[
                // 日付ごとのウィジェットの生成
                daysWidget(
                  calendar: day,
                  isTop: listEquals(week, calendarList.first),
                  isBottom: listEquals(week, calendarList.last),
                ),
              ],
            ],
          ),
        ],
      ],
    );
  }

  /// 曜日ごとのウィジェット
  ///
  /// * param [weekType] 曜日
  Widget weekTypeWidget(WeekType weekType) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: weekType.color,
        border: Border(
          top: calendarLine(isThick: true),
          bottom: calendarLine(isThick: false),
          left: calendarLine(isThick: _weekTypeList.first == weekType),
          right: calendarLine(isThick: _weekTypeList.last == weekType),
        ),
      ),
      child: Text(
        weekType.name,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  /// 日付ごとのウィジェット
  ///
  /// * param [calendar] カレンダー情報
  /// * param [isTop] １週目かどうか
  /// * param [isBottom] 最終週かどうか
  Widget daysWidget({
    required CalendarData calendar,
    required bool isTop,
    required bool isBottom,
  }) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          top: calendarLine(isThick: isTop),
          bottom: calendarLine(isThick: isBottom),
          left: calendarLine(
            isThick: _weekTypeList.first.value == calendar.date.weekday,
          ),
          right: calendarLine(
            isThick: _weekTypeList.last.value == calendar.date.weekday,
          ),
        ),
      ),
      child: Text(
        calendar.date.day.toString(),
        style: TextStyle(
          color: calendar.isThisMonth && calendar.enable
              ? Colors.black
              : Colors.grey,
        ),
      ),
    );
  }

  /// カレンダーの枠線の共通処理
  ///
  /// * param [isThick] 線を太くするかどうか
  BorderSide calendarLine({required bool isThick}) {
    return BorderSide(
      color: Colors.grey,
      width: isThick ? 1 : 0.5,
    );
  }
}
