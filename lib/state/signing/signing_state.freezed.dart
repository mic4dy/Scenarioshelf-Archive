// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SigningState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  String get validationErrorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigningStateCopyWith<SigningState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigningStateCopyWith<$Res> {
  factory $SigningStateCopyWith(
          SigningState value, $Res Function(SigningState) then) =
      _$SigningStateCopyWithImpl<$Res, SigningState>;
  @useResult
  $Res call(
      {String email,
      String password,
      bool isObscure,
      String validationErrorText});
}

/// @nodoc
class _$SigningStateCopyWithImpl<$Res, $Val extends SigningState>
    implements $SigningStateCopyWith<$Res> {
  _$SigningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isObscure = null,
    Object? validationErrorText = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      validationErrorText: null == validationErrorText
          ? _value.validationErrorText
          : validationErrorText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SigningStateCopyWith<$Res>
    implements $SigningStateCopyWith<$Res> {
  factory _$$_SigningStateCopyWith(
          _$_SigningState value, $Res Function(_$_SigningState) then) =
      __$$_SigningStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool isObscure,
      String validationErrorText});
}

/// @nodoc
class __$$_SigningStateCopyWithImpl<$Res>
    extends _$SigningStateCopyWithImpl<$Res, _$_SigningState>
    implements _$$_SigningStateCopyWith<$Res> {
  __$$_SigningStateCopyWithImpl(
      _$_SigningState _value, $Res Function(_$_SigningState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isObscure = null,
    Object? validationErrorText = null,
  }) {
    return _then(_$_SigningState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      validationErrorText: null == validationErrorText
          ? _value.validationErrorText
          : validationErrorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SigningState implements _SigningState {
  const _$_SigningState(
      {this.email = '',
      this.password = '',
      this.isObscure = true,
      this.validationErrorText = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isObscure;
  @override
  @JsonKey()
  final String validationErrorText;

  @override
  String toString() {
    return 'SigningState(email: $email, password: $password, isObscure: $isObscure, validationErrorText: $validationErrorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigningState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.validationErrorText, validationErrorText) ||
                other.validationErrorText == validationErrorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, isObscure, validationErrorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SigningStateCopyWith<_$_SigningState> get copyWith =>
      __$$_SigningStateCopyWithImpl<_$_SigningState>(this, _$identity);
}

abstract class _SigningState implements SigningState {
  const factory _SigningState(
      {final String email,
      final String password,
      final bool isObscure,
      final String validationErrorText}) = _$_SigningState;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get isObscure;
  @override
  String get validationErrorText;
  @override
  @JsonKey(ignore: true)
  _$$_SigningStateCopyWith<_$_SigningState> get copyWith =>
      throw _privateConstructorUsedError;
}
