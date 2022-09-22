// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../model/data/calendar_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarData {
  /// 日付
  DateTime get date => throw _privateConstructorUsedError;

  /// 有効範囲内フラグ
  bool get enable => throw _privateConstructorUsedError;

  /// 今月フラグ
  bool get isThisMonth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarDataCopyWith<CalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDataCopyWith<$Res> {
  factory $CalendarDataCopyWith(
          CalendarData value, $Res Function(CalendarData) then) =
      _$CalendarDataCopyWithImpl<$Res>;
  $Res call({DateTime date, bool enable, bool isThisMonth});
}

/// @nodoc
class _$CalendarDataCopyWithImpl<$Res> implements $CalendarDataCopyWith<$Res> {
  _$CalendarDataCopyWithImpl(this._value, this._then);

  final CalendarData _value;
  // ignore: unused_field
  final $Res Function(CalendarData) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? enable = freezed,
    Object? isThisMonth = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      enable: enable == freezed
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      isThisMonth: isThisMonth == freezed
          ? _value.isThisMonth
          : isThisMonth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarDataCopyWith<$Res>
    implements $CalendarDataCopyWith<$Res> {
  factory _$$_CalendarDataCopyWith(
          _$_CalendarData value, $Res Function(_$_CalendarData) then) =
      __$$_CalendarDataCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, bool enable, bool isThisMonth});
}

/// @nodoc
class __$$_CalendarDataCopyWithImpl<$Res>
    extends _$CalendarDataCopyWithImpl<$Res>
    implements _$$_CalendarDataCopyWith<$Res> {
  __$$_CalendarDataCopyWithImpl(
      _$_CalendarData _value, $Res Function(_$_CalendarData) _then)
      : super(_value, (v) => _then(v as _$_CalendarData));

  @override
  _$_CalendarData get _value => super._value as _$_CalendarData;

  @override
  $Res call({
    Object? date = freezed,
    Object? enable = freezed,
    Object? isThisMonth = freezed,
  }) {
    return _then(_$_CalendarData(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      enable: enable == freezed
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      isThisMonth: isThisMonth == freezed
          ? _value.isThisMonth
          : isThisMonth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CalendarData implements _CalendarData {
  const _$_CalendarData(
      {required this.date, required this.enable, required this.isThisMonth});

  /// 日付
  @override
  final DateTime date;

  /// 有効範囲内フラグ
  @override
  final bool enable;

  /// 今月フラグ
  @override
  final bool isThisMonth;

  @override
  String toString() {
    return 'CalendarData(date: $date, enable: $enable, isThisMonth: $isThisMonth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarData &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.enable, enable) &&
            const DeepCollectionEquality()
                .equals(other.isThisMonth, isThisMonth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(enable),
      const DeepCollectionEquality().hash(isThisMonth));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarDataCopyWith<_$_CalendarData> get copyWith =>
      __$$_CalendarDataCopyWithImpl<_$_CalendarData>(this, _$identity);
}

abstract class _CalendarData implements CalendarData {
  const factory _CalendarData(
      {required final DateTime date,
      required final bool enable,
      required final bool isThisMonth}) = _$_CalendarData;

  @override

  /// 日付
  DateTime get date;
  @override

  /// 有効範囲内フラグ
  bool get enable;
  @override

  /// 今月フラグ
  bool get isThisMonth;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarDataCopyWith<_$_CalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}
