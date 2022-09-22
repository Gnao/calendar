import 'package:calendar/constraint/calendar_constraint.dart';
import 'package:calendar/extension/datetime_extension.dart';
import 'package:calendar/model/data/calendar_data.dart';

/// カレンダーを何ヶ月分表示するか取得
int get calendarCount {
  return diffMonth(calendarStartDay, calendarEndDay) + 1;
}

/// 日付からページ数を取得
///
/// * param [selectMonth] 指定の年月
int dateToPage(DateTime selectMonth) {
  return diffMonth(calendarStartDay, selectMonth);
}

/// ページ数から日付を取得
///
/// * param [page] 指定のページ
DateTime pageToDate(int page) {
  return DateTime(calendarStartDay.year, calendarStartDay.month + page);
}

/// 有効範囲内かどうか判定
///
/// * param [date] チェックする日付
bool checkEnable(DateTime date) {
  // 同日の場合falseになるので日付を調整する
  return date.isAfter(calendarStartDay.add(const Duration(days: -1))) &&
      date.isBefore(calendarEndDay.add(const Duration(days: 1)));
}

/// カレンダーリスト作成
///
/// * param [firstDay] カレンダーを作成したい年月(yyyy-MM-01)
List<List<CalendarData>> createCalendar(DateTime firstDay) {
  // 前月分を埋めるリストを取得
  final prevList = prevPaddingDays(firstDay);
  // カレンダーに表示する月のリストを取得
  final currentList = currentDays(firstDay);
  // 来月分を埋めるリストを取得
  final nextList = nextPaddingDays(
    firstDay,
    prevList.length + currentList.length,
  );

  // カレンダー情報を二次元配列に変換する
  final calendarList = createCalendarList(
    prevList,
    currentList,
    nextList,
  );

  return calendarList;
}

/// 前月分を埋めるリストを作成
///
/// * param [firstDay] カレンダーを作成したい年月(yyyy-MM-01)
List<CalendarData> prevPaddingDays(DateTime firstDay) {
  // 日付の配列を取得
  final weekTypeList = WeekTypeExtension.weekTypeList;
  // WeekType型で曜日を取得
  final weekType = WeekTypeExtension.valueToWeekType(firstDay.weekday);
  // 曜日の始まりから1日が何番目かを取得する
  final prevCount = weekTypeList.indexOf(weekType);

  // 返却用list
  final list = <CalendarData>[];
  // カレンダーに表示する月の初日から遡って前月分の日付を取得
  for (var duration = -1; duration >= -prevCount; duration--) {
    list.insert(
      0,
      CalendarData(
        date: firstDay.add(Duration(days: duration)),
        enable: checkEnable(firstDay.add(Duration(days: duration))),
        isThisMonth: false,
      ),
    );
  }

  return list;
}

/// カレンダーに表示する月のリストを作成
///
/// * param [firstDay] カレンダーを作成したい年月(yyyy-MM-01)
List<CalendarData> currentDays(DateTime firstDay) {
  // カレンダーに表示する月の最終日を取得
  final lastDay = DateTime(firstDay.year, firstDay.month + 1, 0);
  // 返却用list
  final list = <CalendarData>[];
  // カレンダーに表示する月の初日から加算して日付を取得
  for (var duration = 0; duration < lastDay.day; duration++) {
    // リストに追加
    list.add(
      CalendarData(
        date: firstDay.add(Duration(days: duration)),
        enable: checkEnable(firstDay.add(Duration(days: duration))),
        isThisMonth: true,
      ),
    );
  }

  return list;
}

/// 来月分を埋めるリストを作成
///
/// * param [firstDay] カレンダーを作成したい年月(yyyy-MM-01)
List<CalendarData> nextPaddingDays(DateTime firstDay, int listLength) {
  // 1ヶ月の最大日数（6週間）
  const max = 42;
  // カレンダーに表示する月の最終日を取得
  final lastDay = DateTime(firstDay.year, firstDay.month + 1, 0);
  // 返却用list
  final list = <CalendarData>[];
  // カレンダーに表示する月の最終日から加算して日付を取得
  for (var duration = 1; duration <= max - listLength; duration++) {
    list.add(
      CalendarData(
        date: lastDay.add(Duration(days: duration)),
        enable: checkEnable(lastDay.add(Duration(days: duration))),
        isThisMonth: false,
      ),
    );
  }

  return list;
}

/// カレンダー情報を二次元配列に変換する
///
/// * param [prev] 前月分を埋めるリスト
/// * param [current] カレンダーに表示する月のリスト
/// * param [next] 来月分を埋めるリスト
List<List<CalendarData>> createCalendarList(
  List<CalendarData> prev,
  List<CalendarData> current,
  List<CalendarData> next,
) {
  // 1つのリストにする
  final allList = <CalendarData>[...prev, ...current, ...next];
  // 返却用のリスト
  final responseList = <List<CalendarData>>[];

  for (var i = 0; i < allList.length / 7; i++) {
    // 1週間ごとの情報を取得
    final addList = allList.sublist(i * 7, i * 7 + 7);
    // 1週間のうちenableがfalseの日が何日あるかチェック
    final enableList = addList.where((e) => e.isThisMonth == false);
    // 1週間全てisThisMonthがfalseだった場合追加しない
    if (enableList.length != 7) {
      responseList.add(addList);
    }
  }

  return responseList;
}
