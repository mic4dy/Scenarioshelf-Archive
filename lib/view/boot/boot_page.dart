import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/view/boot/boot_option_button.dart';

class BootPage extends StatelessWidget {
  const BootPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.1,
          right: size.width * 0.1,
          bottom: size.width * 0.2,
        ),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/logo/logo.png',
              width: size.width * 0.4,
            ),
            const Spacer(),
            Consumer(
              builder: (_, ref, __) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BootOptionButton.dark(
                      onPressed: () => ref.read(routerProvider).push(Routes.signup.path),
                      label: '新規登録',
                      textLetterSpace: SpaceSize.bootOptionButtonLetterSpace,
                      size: Size(size.width * 0.8, 40),
                    ),
                    BootOptionButton.bright(
                      onPressed: () => ref.read(routerProvider).push(Routes.signin.path),
                      label: 'ログイン',
                      textLetterSpace: SpaceSize.bootOptionButtonLetterSpace,
                      size: Size(size.width * 0.8, 40),
                    ),
                    Divider(
                      color: AppColor.brand.primary,
                      thickness: 0.4,
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
          ],
        ),
      ),
    );
  }
}
