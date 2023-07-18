import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/util/exception/signing_exception.dart';
import 'package:scenarioshelf/view/boot/boot_option_button.dart';
import 'package:scenarioshelf/view/component/snack_bar/app_snack_bar.dart';
import 'package:scenarioshelf/view_model/page/signing/signing_view_model.dart';
import 'package:scenarioshelf/view_model/universal/user/user_view_model.dart';

class BootPage extends ConsumerWidget {
  const BootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;

    ref.listen(userViewModelProvider, (previous, next) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();

      if (previous is AsyncData && next is AsyncLoading) {
        ScaffoldMessenger.of(context).showSnackBar(
          AppSnackBar.loading(content: const Text('ログイン中です')),
        );
      }

      if (next is AsyncError) {
        final Object? error = next.error;
        final String message;

        if (error is SigningException) {
          message = error.display;
        } else {
          message = '原因不明のエラーが発生しました';
        }

        ScaffoldMessenger.of(context).showSnackBar(
          AppSnackBar.error(content: Text(message)),
        );
      }
    });

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
            Column(
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
                  onPressed: () => ref.read(signingViewModelProvider.notifier).signinWithGoogle(),
                  icon: Image.asset(
                    'assets/images/logo/g-logo.png',
                    height: 24,
                  ),
                  label: 'Sign in with Google',
                  size: Size(size.width * 0.8, 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
