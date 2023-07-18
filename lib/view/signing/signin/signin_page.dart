import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/view/boot/boot_option_button.dart';
import 'package:scenarioshelf/view/signing/signing_page.dart';
import 'package:scenarioshelf/view_model/page/signing/signing_view_model.dart';

class SigninPage extends ConsumerWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;

    return SigningPage(
      button: BootOptionButton.dark(
        onPressed: () => ref.read(signingViewModelProvider.notifier).signin(),
        label: 'ログイン',
        textLetterSpace: SpaceSize.bootOptionButtonLetterSpace,
        size: Size(size.width * 0.8 - 64, 40),
      ),
    );
  }
}
