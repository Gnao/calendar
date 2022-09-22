import 'package:calendar/constraint/calendar_constraint.dart';
import 'package:calendar/extension/datetime_extension.dart';
import 'package:calendar/model/data/calendar_data.dart';
import 'package:calendar/usecase/calendar_usecase.dart';
import 'package:calendar/view_model/calendar_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// CalendarWidgetを装飾するWidget
class CalendarWidgetDecoration extends StatelessWidget {
  /// CalendarWidgetを装飾するWidgetのコンストラクタ
  ///
  /// * param [pageController] ページ遷移するためのPageController
  /// * param [ref] 画面更新するためのWidgetRef
  /// * param [index] インデックス
  const CalendarWidgetDecoration({
    super.key,
    required this.pageController,
    required this.ref,
    required this.index,
  });

  /// カレンダーを制御するPageController
  final PageController pageController;

  /// stateの取得と更新を行うためのWidgetRef
  final WidgetRef ref;

  /// 現在表示中のページ
  final int index;

  @override
  Widget build(BuildContext context) {
    // 現在表示しているカレンダー情報を取得する
    final calendar = ref.watch(calendarPageProvider).calendarList[index];

    return Column(
      children: [
        // 曜日
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final weekType in WeekTypeExtension.weekTypeList) ...[
              // 曜日ごとのウィジェットの生成
              weekTypeWidgetDecoration(weekType),
            ],
          ],
        ),

        // 日付
        // リストから1週間ごとの情報を取得
        for (final week in calendar) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1週間の情報から1日ごとの情報を取得
              for (final day in week) ...[
                // 日付ごとのウィジェットの生成
                daysWidgetDecoration(day),
              ],
            ],
          ),
        ],
      ],
    );
  }

  /// 曜日ごとのウィジェットを装飾する
  ///
  /// * param [weekType] 曜日
  Widget weekTypeWidgetDecoration(WeekType weekType) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      color: Colors.transparent,
    );
  }

  /// 日付ごとのウィジェットを装飾する
  ///
  /// * param [calendar] カレンダー情報
  Widget daysWidgetDecoration(CalendarData calendar) {
    // 選択している日付を取得する
    final selectDate = ref.watch(calendarPageProvider).selectedDate;

    return GestureDetector(
      onTap: () {
        // 有効範囲外の場合処理を行わない
        if (!calendar.enable) {
          return;
        }

        // 選択している日付を更新する
        ref.watch(calendarPageProvider.notifier).selectData(calendar.date);
        // 今月以外の場合カレンダーを遷移させる
        if (!calendar.isThisMonth) {
          // 選択された日付から遷移先のページを取得
          final page = dateToPage(calendar.date);

          if (page < index) {
            // 遷移先のページが現在表示中のページより前の場合
            pageController.previousPage(
              duration: const Duration(milliseconds: 100),
              curve: Curves.linear,
            );
          } else if (page > index) {
            // 遷移先のページが現在表示中のページより後の場合
            pageController.nextPage(
              duration: const Duration(milliseconds: 100),
              curve: Curves.linear,
            );
          }
        }
      },
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(10),
          // 選択中の日付の場合レイアウトを変える
          decoration:
              calendar.isThisMonth && calendar.date.isSameDate(selectDate)
                  ? BoxDecoration(
                      border: Border.all(color: Colors.red, width: 5),
                      shape: BoxShape.circle,
                    )
                  : null,
        ),
      ),
    );
  }
}
