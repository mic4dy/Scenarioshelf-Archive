import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';

class BootPage extends StatelessWidget {
  const BootPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                width: size.width * 0.35,
                height: size.height * 0.35,
                child: Image.asset(
                  'assets/images/logo/logo.png',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 64),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _signupButton(),
                    _signinButton(),
                    Divider(
                      indent: size.width * 0.1,
                      endIndent: size.width * 0.1,
                      color: AppColor.brand.secondary,
                      thickness: 0.5,
                      height: 24,
                    ),
                    _signinWithGoogleButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _signupButton() {
    return Builder(
      builder: (context) {
        final Size size = MediaQuery.of(context).size;

        return OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: AppColor.brand.secondary,
              width: 0.5,
            ),
            backgroundColor: AppColor.brand.secondary,
            shape: const StadiumBorder(),
            minimumSize: Size(size.width * 0.8, 40),
          ),
          child: Text(
            '新規登録',
            style: TextStyle(
              color: AppColor.text.white,
              letterSpacing: 8,
            ),
          ),
        );
      },
    );
  }

  Widget _signinButton() {
    return Builder(
      builder: (context) {
        final Size size = MediaQuery.of(context).size;

        return OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: AppColor.brand.secondary,
              width: 0.5,
            ),
            shape: const StadiumBorder(),
            minimumSize: Size(size.width * 0.8, 40),
          ),
          child: Text(
            'ログイン',
            style: TextStyle(
              color: AppColor.brand.secondary,
              letterSpacing: 8,
            ),
          ),
        );
      },
    );
  }

  Widget _signinWithGoogleButton() {
    return Builder(
      builder: (context) {
        final Size size = MediaQuery.of(context).size;

        return OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: AppColor.brand.secondary,
              width: 0.5,
            ),
            shape: const StadiumBorder(),
            minimumSize: Size(size.width * 0.8, 40),
          ),
          icon: Image.asset(
            'assets/images/logo/g-logo.png',
            height: 24,
          ),
          label: Text(
            'Sign in with Google',
            style: TextStyle(
              color: AppColor.brand.secondary,
              fontWeight: FontWeight.w300,
            ),
          ),
        );
      },
    );
  }
}
