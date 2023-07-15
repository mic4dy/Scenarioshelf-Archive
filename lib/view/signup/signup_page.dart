import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/state/signing/signing_state.dart';
import 'package:scenarioshelf/view/boot/boot_option_button.dart';
import 'package:scenarioshelf/view/component/signing_form.dart';
import 'package:scenarioshelf/view_model/page/signing/signing_view_model.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final SigningState state = ref.watch(signingViewModelProvider);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.1,
          right: size.width * 0.1,
        ),
        child: Column(
          children: [
            const Spacer(flex: 3),
            Image.asset(
              'assets/images/logo/logo.png',
              width: size.width * 0.4,
            ),
            const Spacer(flex: 2),
            SigningForm.email(),
            const SizedBox(height: MarginSize.large),
            SigningForm.password(
              isObscure: state.isObscure,
              suffixIcon: IconButton(
                onPressed: () => ref.read(signingViewModelProvider.notifier).onTapObscureIcon(),
                icon: Icon(state.isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                iconSize: 18,
                splashRadius: 20,
              ),
            ),
            const Spacer(flex: 2),
            BootOptionButton.dark(
              onPressed: () {},
              label: '登録',
              textLetterSpace: SpaceSize.bootOptionButtonLetterSpace,
              size: Size(size.width * 0.8, 40),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
