import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signing_state.freezed.dart';

@freezed
class SigningState with _$SigningState {
  const factory SigningState({
    required GlobalKey<FormState> formKey,
    @Default('') String email,
    @Default('') String password,
    @Default(true) bool isObscure,
  }) = _SigningState;
}
