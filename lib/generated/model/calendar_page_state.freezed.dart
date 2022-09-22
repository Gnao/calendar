// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../model/calendar_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarPageState {
  /// 選択中の日付
  DateTime get selectedDate => throw _privateConstructorUsedError;

  /// 表示中のページ
  int get displayPage => throw _privateConstructorUsedError;

  /// カレンダーWidgetを保存しておくリスト
  List<List<List<CalendarData>>> get calendarList =>
      throw _privateConstructorUsedError;

  /// カレンダーWidgetを保存しておくリスト
  List<Widget> get calendarWidgetList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarPageStateCopyWith<CalendarPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarPageStateCopyWith<$Res> {
  factory $CalendarPageStateCopyWith(
          CalendarPageState value, $Res Function(CalendarPageState) then) =
      _$CalendarPageStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime selectedDate,
      int displayPage,
      List<List<List<CalendarData>>> calendarList,
      List<Widget> calendarWidgetList});
}

/// @nodoc
class _$CalendarPageStateCopyWithImpl<$Res>
    implements $CalendarPageStateCopyWith<$Res> {
  _$CalendarPageStateCopyWithImpl(this._value, this._then);

  final CalendarPageState _value;
  // ignore: unused_field
  final $Res Function(CalendarPageState) _then;

  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? displayPage = freezed,
    Object? calendarList = freezed,
    Object? calendarWidgetList = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayPage: displayPage == freezed
          ? _value.displayPage
          : displayPage // ignore: cast_nullable_to_non_nullable
              as int,
      calendarList: calendarList == freezed
          ? _value.calendarList
          : calendarList // ignore: cast_nullable_to_non_nullable
              as List<List<List<CalendarData>>>,
      calendarWidgetList: calendarWidgetList == freezed
          ? _value.calendarWidgetList
          : calendarWidgetList // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarPageStateCopyWith<$Res>
    implements $CalendarPageStateCopyWith<$Res> {
  factory _$$_CalendarPageStateCopyWith(_$_CalendarPageState value,
          $Res Function(_$_CalendarPageState) then) =
      __$$_CalendarPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime selectedDate,
      int displayPage,
      List<List<List<CalendarData>>> calendarList,
      List<Widget> calendarWidgetList});
}

/// @nodoc
class __$$_CalendarPageStateCopyWithImpl<$Res>
    extends _$CalendarPageStateCopyWithImpl<$Res>
    implements _$$_CalendarPageStateCopyWith<$Res> {
  __$$_CalendarPageStateCopyWithImpl(
      _$_CalendarPageState _value, $Res Function(_$_CalendarPageState) _then)
      : super(_value, (v) => _then(v as _$_CalendarPageState));

  @override
  _$_CalendarPageState get _value => super._value as _$_CalendarPageState;

  @override
  $Res call({
    Object? selectedDate = freezed,
    Object? displayPage = freezed,
    Object? calendarList = freezed,
    Object? calendarWidgetList = freezed,
  }) {
    return _then(_$_CalendarPageState(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayPage: displayPage == freezed
          ? _value.displayPage
          : displayPage // ignore: cast_nullable_to_non_nullable
              as int,
      calendarList: calendarList == freezed
          ? _value._calendarList
          : calendarList // ignore: cast_nullable_to_non_nullable
              as List<List<List<CalendarData>>>,
      calendarWidgetList: calendarWidgetList == freezed
          ? _value._calendarWidgetList
          : calendarWidgetList // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$_CalendarPageState implements _CalendarPageState {
  const _$_CalendarPageState(
      {required this.selectedDate,
      required this.displayPage,
      final List<List<List<CalendarData>>> calendarList =
          const <List<List<CalendarData>>>[],
      final List<Widget> calendarWidgetList = const <Widget>[]})
      : _calendarList = calendarList,
        _calendarWidgetList = calendarWidgetList;

  /// 選択中の日付
  @override
  final DateTime selectedDate;

  /// 表示中のページ
  @override
  final int displayPage;

  /// カレンダーWidgetを保存しておくリスト
  final List<List<List<CalendarData>>> _calendarList;

  /// カレンダーWidgetを保存しておくリスト
  @override
  @JsonKey()
  List<List<List<CalendarData>>> get calendarList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calendarList);
  }

  /// カレンダーWidgetを保存しておくリスト
  final List<Widget> _calendarWidgetList;

  /// カレンダーWidgetを保存しておくリスト
  @override
  @JsonKey()
  List<Widget> get calendarWidgetList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calendarWidgetList);
  }

  @override
  String toString() {
    return 'CalendarPageState(selectedDate: $selectedDate, displayPage: $displayPage, calendarList: $calendarList, calendarWidgetList: $calendarWidgetList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarPageState &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate) &&
            const DeepCollectionEquality()
                .equals(other.displayPage, displayPage) &&
            const DeepCollectionEquality()
                .equals(other._calendarList, _calendarList) &&
            const DeepCollectionEquality()
                .equals(other._calendarWidgetList, _calendarWidgetList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedDate),
      const DeepCollectionEquality().hash(displayPage),
      const DeepCollectionEquality().hash(_calendarList),
      const DeepCollectionEquality().hash(_calendarWidgetList));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarPageStateCopyWith<_$_CalendarPageState> get copyWith =>
      __$$_CalendarPageStateCopyWithImpl<_$_CalendarPageState>(
          this, _$identity);
}

abstract class _CalendarPageState implements CalendarPageState {
  const factory _CalendarPageState(
      {required final DateTime selectedDate,
      required final int displayPage,
      final List<List<List<CalendarData>>> calendarList,
      final List<Widget> calendarWidgetList}) = _$_CalendarPageState;

  @override

  /// 選択中の日付
  DateTime get selectedDate;
  @override

  /// 表示中のページ
  int get displayPage;
  @override

  /// カレンダーWidgetを保存しておくリスト
  List<List<List<CalendarData>>> get calendarList;
  @override

  /// カレンダーWidgetを保存しておくリスト
  List<Widget> get calendarWidgetList;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarPageStateCopyWith<_$_CalendarPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
