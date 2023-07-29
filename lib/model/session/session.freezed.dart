// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get scenarioId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<Schedule>? get schedules => throw _privateConstructorUsedError;
  String? get charactor => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String scenarioId,
      DateTime createdAt,
      DateTime updatedAt,
      List<Schedule>? schedules,
      String? charactor,
      String? memo});
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? scenarioId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? schedules = freezed,
    Object? charactor = freezed,
    Object? memo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      scenarioId: null == scenarioId
          ? _value.scenarioId
          : scenarioId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedules: freezed == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedule>?,
      charactor: freezed == charactor
          ? _value.charactor
          : charactor // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String scenarioId,
      DateTime createdAt,
      DateTime updatedAt,
      List<Schedule>? schedules,
      String? charactor,
      String? memo});
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$_Session>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? scenarioId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? schedules = freezed,
    Object? charactor = freezed,
    Object? memo = freezed,
  }) {
    return _then(_$_Session(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      scenarioId: null == scenarioId
          ? _value.scenarioId
          : scenarioId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedules: freezed == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedule>?,
      charactor: freezed == charactor
          ? _value.charactor
          : charactor // ignore: cast_nullable_to_non_nullable
              as String?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Session implements _Session {
  const _$_Session(
      {required this.id,
      required this.userId,
      required this.scenarioId,
      required this.createdAt,
      required this.updatedAt,
      final List<Schedule>? schedules,
      this.charactor,
      this.memo})
      : _schedules = schedules;

  @override
  final String id;
  @override
  final String userId;
  @override
  final String scenarioId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<Schedule>? _schedules;
  @override
  List<Schedule>? get schedules {
    final value = _schedules;
    if (value == null) return null;
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? charactor;
  @override
  final String? memo;

  @override
  String toString() {
    return 'Session(id: $id, userId: $userId, scenarioId: $scenarioId, createdAt: $createdAt, updatedAt: $updatedAt, schedules: $schedules, charactor: $charactor, memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.scenarioId, scenarioId) ||
                other.scenarioId == scenarioId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            (identical(other.charactor, charactor) ||
                other.charactor == charactor) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      scenarioId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_schedules),
      charactor,
      memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      __$$_SessionCopyWithImpl<_$_Session>(this, _$identity);
}

abstract class _Session implements Session {
  const factory _Session(
      {required final String id,
      required final String userId,
      required final String scenarioId,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final List<Schedule>? schedules,
      final String? charactor,
      final String? memo}) = _$_Session;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get scenarioId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<Schedule>? get schedules;
  @override
  String? get charactor;
  @override
  String? get memo;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}
