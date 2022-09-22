import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/model/data/calendar_data.freezed.dart';

/// カレンダー情報
@freezed
class CalendarData with _$CalendarData {
  /// カレンダー情報生成
  ///
  /// * param [date] 日付
  /// * param [enable] 今月かどうかフラグ
  const factory CalendarData({
    /// 日付
    required DateTime date,

    /// 有効範囲内フラグ
    required bool enable,

    /// 今月フラグ
    required bool isThisMonth,
  }) = _CalendarData;
}
