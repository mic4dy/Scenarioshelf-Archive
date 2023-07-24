import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/state/signing/signing_state.dart';
import 'package:scenarioshelf/util/exception/signing_exception.dart';
import 'package:scenarioshelf/util/gen/assets.gen.dart';
import 'package:scenarioshelf/view/boot/boot_option_button.dart';
import 'package:scenarioshelf/view/component/snack_bar/app_snack_bar.dart';
import 'package:scenarioshelf/view/signing/signing_form.dart';
import 'package:scenarioshelf/view_model/page/signing/signing_view_model.dart';
import 'package:scenarioshelf/view_model/universal/user/user_view_model.dart';

class SigningPage extends ConsumerWidget {
  const SigningPage({
    required this.button,
    super.key,
  });

  final BootOptionButton button;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final SigningState state = ref.watch(signingViewModelProvider);

    ref.listen(userViewModelProvider, (previous, next) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      
      if (previous is AsyncData && next is AsyncLoading) {
        ScaffoldMessenger.of(context).showSnackBar(
          AppSnackBar.loading(content: const Text('ユーザを登録中です')),
        );
      }

      if (previous is! AsyncError && next is AsyncError) {
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1,
          ),
          child: Form(
            key: state.formKey,
            child: Column(
              children: [
                const Spacer(flex: 2),
                Assets.images.logo.logo.image(
                  width: size.width * 0.4,
                ),
                const Spacer(flex: 2),
                SigningForm.email(
                  onChanged: (email) => ref.read(signingViewModelProvider.notifier).updateEmail(email),
                  validator: (_) => ref.read(signingViewModelProvider.notifier).validateEmail(),
                ),
                const SizedBox(height: MarginSize.large),
                SigningForm.password(
                  onChanged: (password) => ref.read(signingViewModelProvider.notifier).updatePassword(password),
                  isObscure: state.isObscure,
                  suffixIcon: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => ref.read(signingViewModelProvider.notifier).onTapObscureIcon(),
                    icon: Icon(state.isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                    iconSize: 18,
                    splashRadius: 18,
                  ),
                  validator: (_) => ref.read(signingViewModelProvider.notifier).validatePassword(),
                ),
                const Spacer(flex: 2),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton.small(
                        onPressed: () => ref.read(routerProvider).pop(),
                        backgroundColor: AppColor.ui.white,
                        splashColor: Colors.transparent,
                        focusColor: AppColor.brand.primaryLight,
                        elevation: 0,
                        highlightElevation: 0,
                        shape: CircleBorder(
                          side: BorderSide(
                            color: AppColor.brand.primary,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          color: AppColor.brand.primary,
                        ),
                      ),
                      button,
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
