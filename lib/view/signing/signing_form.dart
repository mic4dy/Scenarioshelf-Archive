import 'package:flutter/material.dart';

class SigningForm extends StatelessWidget {
  const SigningForm({
    this.onChanged,
    this.obscureText = false,
    this.decoration,
    this.textInputType,
    this.validator,
    super.key,
  });

  factory SigningForm.email({
    void Function(String)? onChanged,
    String? Function(String?)? validator,
  }) => SigningForm(
    onChanged: onChanged,
    decoration: const InputDecoration(
      contentPadding: EdgeInsets.zero,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: 'メールアドレス',
    ),
    textInputType: TextInputType.emailAddress,
    validator: validator,
  );

  factory SigningForm.password({
    void Function(String)? onChanged,
    bool isObscure = true,
    Widget? suffixIcon,
    String? Function(String?)? validator,
  }) {
    return SigningForm(
      onChanged: onChanged,
      obscureText: isObscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'パスワード',
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(),
      ),
      textInputType: TextInputType.visiblePassword,
      validator: validator,
    );
  }

  final void Function(String)? onChanged;
  final bool obscureText;
  final InputDecoration? decoration;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;

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
      validator: validator,
    );
  }
}
