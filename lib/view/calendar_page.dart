import 'package:calendar/extension/datetime_extension.dart';
import 'package:calendar/usecase/calendar_usecase.dart';
import 'package:calendar/view/parts/calendar_widget_decoration.dart';
import 'package:calendar/view_model/calendar_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// カレンダーページ
class CalendarPage extends ConsumerStatefulWidget {
  /// カレンダーページのコンストラクタ
  const CalendarPage({super.key});

  @override
  ConsumerState<CalendarPage> createState() => CalendarPageState();
}

/// カレンダーページのState
class CalendarPageState extends ConsumerState<CalendarPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    // PageController初期化
    _pageController = PageController(initialPage: dateToPage(DateTime.now()));
  }

  @override
  void dispose() {
    // PageController破棄
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // calendar_page_state
    final calendarState = ref.watch(calendarPageProvider);
    // calendar_page_notifier
    final calendarNotifier = ref.watch(calendarPageProvider.notifier);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  );
                },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                label: const Text(
                  '前の月',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Text(
                pageToDate(calendarState.displayPage).string(),
                style: const TextStyle(color: Colors.black),
              ),
              TextButton.icon(
                onPressed: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  );
                },
                icon: const Text(
                  '次の月',
                  style: TextStyle(color: Colors.black),
                ),
                label: const Icon(Icons.arrow_forward_ios, color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 400,
            width: 400,
            child: calendarState.calendarWidgetList.isEmpty
                ? const SizedBox()
                : PageView.builder(
                    controller: _pageController,
                    itemCount: calendarCount,
                    onPageChanged: calendarNotifier.pageViewChanged,
                    itemBuilder: (BuildContext context, int index) => Stack(
                      children: [
                        calendarState.calendarWidgetList[index],
                        CalendarWidgetDecoration(
                          ref: ref,
                          pageController: _pageController,
                          index: index,
                        )
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
