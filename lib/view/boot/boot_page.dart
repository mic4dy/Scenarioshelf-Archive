import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/view/boot/boot_option_button.dart';

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
                width: size.width * 0.4,
                height: size.height * 0.4,
                child: Image.asset(
                  'assets/images/logo/logo.png',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.08),
                child: Consumer(
                  builder: (_, ref, __) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BootOptionButton.dark(
                          onPressed: () => ref.read(routerProvider).push(Routes.signup.path),
                          label: '新規登録',
                          textLetterSpace: 8,
                          size: Size(size.width * 0.8, 40),
                        ),
                        BootOptionButton.bright(
                          onPressed: () => ref.read(routerProvider).push(Routes.signin.path),
                          label: 'ログイン',
                          textLetterSpace: 8,
                          size: Size(size.width * 0.8, 40),
                        ),
                        Divider(
                          indent: size.width * 0.1,
                          endIndent: size.width * 0.1,
                          color: AppColor.brand.secondary,
                          thickness: 0.5,
                          height: 24,
                        ),
                        BootOptionButton.credential(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/logo/g-logo.png',
                            height: 24,
                          ),
                          label: 'Sign in with Google',
                          size: Size(size.width * 0.8, 40),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
