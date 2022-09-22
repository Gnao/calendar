import 'package:calendar/constraint/calendar_constraint.dart';
import 'package:calendar/extension/datetime_extension.dart';
import 'package:calendar/model/calendar_page_state.dart';
import 'package:calendar/model/data/calendar_data.dart';
import 'package:calendar/usecase/calendar_usecase.dart';
import 'package:calendar/view/parts/calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// CalendarPageNotifierの状態を管理する
final calendarPageProvider =
    StateNotifierProvider.autoDispose<CalendarPageNotifier, CalendarPageState>(
  (ref) => CalendarPageNotifier(),
);

/// カレンダーページのnotifier
class CalendarPageNotifier extends StateNotifier<CalendarPageState> {
  /// カレンダーページのnotifierのコンストラクタ
  CalendarPageNotifier()
      : super(
          CalendarPageState(
            selectedDate: DateTimeExtension.today,
            displayPage: dateToPage(DateTimeExtension.today),
          ),
        ) {
    // 初期化処理
    initializeCalendar();
  }

  // カレンダーWidgetを保存しておくリスト
  final _calendarList = <List<List<CalendarData>>>[];

  // カレンダーWidgetを保存しておくリスト
  final _calendarWidgetList = <Widget>[];

  /// 初期化処理
  void initializeCalendar() {
    for (var i = 0; i < calendarCount; i++) {
      final calendar = createCalendar(
        DateTime(calendarStartDay.year, calendarStartDay.month + i),
      );
      final widget = CalendarWidget(calendarList: calendar);

      _calendarList.add(calendar);
      _calendarWidgetList.add(widget);
    }

    // 更新
    state = state.copyWith(
      calendarList: _calendarList,
      calendarWidgetList: _calendarWidgetList,
    );
  }

  /// スクロールしてページを変更した際の処理
  ///
  /// * param [page] 遷移先のページ
  void pageViewChanged(int page) {
    state = state.copyWith(displayPage: page);
  }

  /// 日付を選択した際の処理
  ///
  /// * param [day] 選択した日付
  void selectData(DateTime day) {
    state = state.copyWith(selectedDate: day);
  }
}
