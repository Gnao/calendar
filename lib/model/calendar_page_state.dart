import 'package:calendar/model/data/calendar_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/model/calendar_page_state.freezed.dart';

/// カレンダーページのstate
@freezed
class CalendarPageState with _$CalendarPageState {
  /// カレンダーページのstate生成
  ///
  /// * param [selectedDate] 選択中の日付
  /// * param [displayPage] 表示中のページ
  const factory CalendarPageState({
    /// 選択中の日付
    required DateTime selectedDate,

    /// 表示中のページ
    required int displayPage,

    /// カレンダーWidgetを保存しておくリスト
    @Default(<List<List<CalendarData>>>[])
        List<List<List<CalendarData>>> calendarList,

    /// カレンダーWidgetを保存しておくリスト
    @Default(<Widget>[]) List<Widget> calendarWidgetList,
  }) = _CalendarPageState;
}
