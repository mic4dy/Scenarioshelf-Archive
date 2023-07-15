import 'package:flutter/material.dart';

class SigningForm extends StatelessWidget {
  const SigningForm({
    this.onChanged,
    this.obscureText = false,
    this.decoration,
    this.textInputType,
    super.key,
  });

  factory SigningForm.email({
    void Function(String)? onChanged,
  }) => SigningForm(
    onChanged: onChanged,
    decoration: const InputDecoration(
      contentPadding: EdgeInsets.zero,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: 'メールアドレス',
    ),
    textInputType: TextInputType.emailAddress,
  );

  factory SigningForm.password({
    void Function(String)? onChanged,
    bool isObscure = true,
    Widget? suffixIcon,
  }) {
    return SigningForm(
      onChanged: onChanged,
      obscureText: isObscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'パスワード',
        suffixIcon: suffixIcon,
      ),
      textInputType: TextInputType.visiblePassword,
    );
  }

  final void Function(String)? onChanged;
  final bool obscureText;
  final InputDecoration? decoration;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: decoration,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        height: 1,
      ),
      keyboardType: textInputType,
    );
  }
}
