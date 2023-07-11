import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _emailFormField(),
          _passwordFormField(),
          _signinButton(),
          _forgetPasswordButton(),
          _googleSigninButton(),
          _signupButton(),
        ],
      ),
    );
  }

  Widget _emailFormField() {
    return TextFormField();
  }

  Widget _passwordFormField() {
    return TextFormField();
  }

  Widget _signinButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Container(),
    );
  }

  Widget _forgetPasswordButton() {
    return TextButton(
      onPressed: () {},
      child: Container(),
    );
  }

  Widget _googleSigninButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Container(),
    );
  }

  Widget _signupButton() {
    return TextButton(
      onPressed: () {},
      child: Container(),
    );
  }
}
