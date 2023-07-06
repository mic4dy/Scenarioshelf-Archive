// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scenario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Scenario _$ScenarioFromJson(Map<String, dynamic> json) {
  return _Scenario.fromJson(json);
}

/// @nodoc
mixin _$Scenario {
  int get id => throw _privateConstructorUsedError;
  TRPGSystem get system => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScenarioCopyWith<Scenario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenarioCopyWith<$Res> {
  factory $ScenarioCopyWith(Scenario value, $Res Function(Scenario) then) =
      _$ScenarioCopyWithImpl<$Res, Scenario>;
  @useResult
  $Res call(
      {int id, TRPGSystem system, String name, String? url, String? image});
}

/// @nodoc
class _$ScenarioCopyWithImpl<$Res, $Val extends Scenario>
    implements $ScenarioCopyWith<$Res> {
  _$ScenarioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? system = null,
    Object? name = null,
    Object? url = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScenarioCopyWith<$Res> implements $ScenarioCopyWith<$Res> {
  factory _$$_ScenarioCopyWith(
          _$_Scenario value, $Res Function(_$_Scenario) then) =
      __$$_ScenarioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, TRPGSystem system, String name, String? url, String? image});
}

/// @nodoc
class __$$_ScenarioCopyWithImpl<$Res>
    extends _$ScenarioCopyWithImpl<$Res, _$_Scenario>
    implements _$$_ScenarioCopyWith<$Res> {
  __$$_ScenarioCopyWithImpl(
      _$_Scenario _value, $Res Function(_$_Scenario) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? system = null,
    Object? name = null,
    Object? url = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Scenario(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Scenario implements _Scenario {
  const _$_Scenario(
      {required this.id,
      required this.system,
      required this.name,
      this.url,
      this.image});

  factory _$_Scenario.fromJson(Map<String, dynamic> json) =>
      _$$_ScenarioFromJson(json);

  @override
  final int id;
  @override
  final TRPGSystem system;
  @override
  final String name;
  @override
  final String? url;
  @override
  final String? image;

  @override
  String toString() {
    return 'Scenario(id: $id, system: $system, name: $name, url: $url, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Scenario &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, system, name, url, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScenarioCopyWith<_$_Scenario> get copyWith =>
      __$$_ScenarioCopyWithImpl<_$_Scenario>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScenarioToJson(
      this,
    );
  }
}

abstract class _Scenario implements Scenario {
  const factory _Scenario(
      {required final int id,
      required final TRPGSystem system,
      required final String name,
      final String? url,
      final String? image}) = _$_Scenario;

  factory _Scenario.fromJson(Map<String, dynamic> json) = _$_Scenario.fromJson;

  @override
  int get id;
  @override
  TRPGSystem get system;
  @override
  String get name;
  @override
  String? get url;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_ScenarioCopyWith<_$_Scenario> get copyWith =>
      throw _privateConstructorUsedError;
}
