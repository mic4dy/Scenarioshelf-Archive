import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/view/boot/boot_option_button.dart';
import 'package:scenarioshelf/view/component/signing_form.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    bool isObscure = true;

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
            SigningForm.email(),
            const SizedBox(height: MarginSize.large),
            SigningForm.password(
              isObscure: isObscure,
              suffixIcon: IconButton(
                onPressed: () => isObscure = !isObscure,
                icon: Icon(isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                iconSize: 20,
              ),
            ),
            const Spacer(),
            BootOptionButton.dark(
              onPressed: () {},
              label: '登録',
              textLetterSpace: SpaceSize.bootOptionButtonLetterSpace,
              size: Size(size.width * 0.8, 40),
            ),
          ],
        ),
      ),
    );
  }
}
