import 'package:intl/intl.dart';

/// DateTimeの拡張
extension DateTimeExtension on DateTime {
  /// 同じ日付かどうかチェック
  ///
  /// * param [other] 比較する日付
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  /// DateTimeをString型で取得する
  ///
  /// * param [datePattern] DatePattern
  String string([DatePattern datePattern = DatePattern.format1]) {
    return DateFormat(datePattern.value).format(this);
  }

  /// 今日の日付
  static DateTime get today => DateTime.now();
}

/// Date->String用のパターン
enum DatePattern {
  /// yyyy年MM月
  format1,
}

extension on DatePattern {
  /// Date->String用のパターンを取得
  String get value {
    switch (this) {
      case DatePattern.format1:
        return 'yyyy年MM月';
    }
  }
}

/// startとendが何ヶ月離れているか取得する（日付の考慮なし）
///
/// * param [start] 表示するカレンダーの最初の年月
/// * param [end] 表示するカレンダーの最後の年月
int diffMonth(DateTime start, DateTime end) {
  var diffMonth = 0;
  if (start.year != end.year) {
    // 1年毎に12ヶ月分追加する
    diffMonth += 12 * (end.year - start.year);
  }

  // 月の差分を追加する
  return diffMonth += end.month - start.month;
}
