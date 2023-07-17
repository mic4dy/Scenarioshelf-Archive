import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/state/signing/signing_state.dart';
import 'package:scenarioshelf/view_model/universal/user/user_view_model.dart';

part 'signing_view_model.g.dart';

@riverpod
class SigningViewModel extends _$SigningViewModel {
  @override
  SigningState build() {
    final formKey = GlobalKey<FormState>();

    return SigningState(
      formKey: formKey,
    );
  }

  void updateEmail(String email) => state = state.copyWith(email: email);

  void updatePassword(String password) => state = state.copyWith(password: password);

  void onTapObscureIcon() => state = state.copyWith(isObscure: !state.isObscure);

  String? validateEmail() {
    final bool validEmail = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(state.email);
    if (!validEmail) return '正しいメールアドレスを入力してください';

    return null;
  }

  String? validatePassword() {
    if (state.password.length < 8) return '8文字以上のパスワードを設定してください';

    final bool validPassword = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+",
    ).hasMatch(state.password);
    if (!validPassword) return '英数字記号も用いたパスワードを設定してください';

    return null;
  }

  Future<void> signup() async {
    if (!state.formKey.currentState!.validate()) return;

    await ref.read(userViewModelProvider.notifier).signupWithEmailAndPassword(
      email: state.email,
      password: state.password,
    );

    ref.watch(userViewModelProvider).whenData((_) => ref.read(routerProvider).go(Routes.home.path));
  }

  Future<void> signin() async {
    await ref.read(userViewModelProvider.notifier).signinWithEmailAndPassword(
      email: state.email,
      password: state.password,
    );

    ref.watch(userViewModelProvider).whenData((_) => ref.read(routerProvider).go(Routes.home.path));
  }
}
