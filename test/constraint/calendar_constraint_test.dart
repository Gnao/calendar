import 'package:calendar/constraint/calendar_constraint.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  test('calendarStartDay test', () {
    final now = DateTime.now();

    expect(now.year - 1, calendarStartDay.year);
    expect(now.month, calendarStartDay.month);
    expect(now.day, calendarStartDay.day);
  });

  test('calendarEndDay test', () {
    final now = DateTime.now();

    expect(now.year + 1, calendarEndDay.year);
    expect(now.month, calendarEndDay.month);
    expect(now.day, calendarEndDay.day);
  });

  test('startWeekType test', () {
    expect(WeekType.sunday, startWeekType);
  });

  test('startWeekType test', () {
    expect(WeekType.sunday, startWeekType);
  });

  test('WeekTypeExtension.weekTypeList test', () {
    expect(WeekType.sunday, WeekTypeExtension.weekTypeList[0]);
    expect(WeekType.monday, WeekTypeExtension.weekTypeList[1]);
    expect(WeekType.tuesday, WeekTypeExtension.weekTypeList[2]);
    expect(WeekType.wednesday, WeekTypeExtension.weekTypeList[3]);
    expect(WeekType.thursday, WeekTypeExtension.weekTypeList[4]);
    expect(WeekType.friday, WeekTypeExtension.weekTypeList[5]);
    expect(WeekType.saturday, WeekTypeExtension.weekTypeList[6]);
  });

  test('WeekType.value test', () {
    expect(1, WeekType.monday.value);
    expect(2, WeekType.tuesday.value);
    expect(3, WeekType.wednesday.value);
    expect(4, WeekType.thursday.value);
    expect(5, WeekType.friday.value);
    expect(6, WeekType.saturday.value);
    expect(7, WeekType.sunday.value);
  });

  test('WeekTypeExtension.valueToWeekType() test', () {
    expect(WeekType.monday, WeekTypeExtension.valueToWeekType(1));
    expect(WeekType.tuesday, WeekTypeExtension.valueToWeekType(2));
    expect(WeekType.wednesday, WeekTypeExtension.valueToWeekType(3));
    expect(WeekType.thursday, WeekTypeExtension.valueToWeekType(4));
    expect(WeekType.friday, WeekTypeExtension.valueToWeekType(5));
    expect(WeekType.saturday, WeekTypeExtension.valueToWeekType(6));
    expect(WeekType.sunday, WeekTypeExtension.valueToWeekType(7));
  });

  test('WeekType.name test', () {
    expect('月', WeekType.monday.name);
    expect('火', WeekType.tuesday.name);
    expect('水', WeekType.wednesday.name);
    expect('木', WeekType.thursday.name);
    expect('金', WeekType.friday.name);
    expect('土', WeekType.saturday.name);
    expect('日', WeekType.sunday.name);
  });

  test('WeekType.name test', () {
    expect(Colors.black, WeekType.monday.color);
    expect(Colors.black, WeekType.tuesday.color);
    expect(Colors.black, WeekType.wednesday.color);
    expect(Colors.black, WeekType.thursday.color);
    expect(Colors.black, WeekType.friday.color);
    expect(Colors.blue, WeekType.saturday.color);
    expect(Colors.red, WeekType.sunday.color);
  });
}
