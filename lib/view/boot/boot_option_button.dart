import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';

class BootOptionButton extends StatelessWidget {
  const BootOptionButton({
    required this.onPressed,
    required this.child,
    this.buttonStyle,
    super.key,
  });

  factory BootOptionButton.bright({
    required void Function()? onPressed,
    required String label,
    double? textLetterSpace,
    Size? size,
  }) {
    return BootOptionButton(
      onPressed: onPressed,
      buttonStyle: OutlinedButton.styleFrom(
        side: BorderSide(
          color: AppColor.brand.secondary,
          width: 0.5,
        ),
        backgroundColor: AppColor.ui.white,
        shape: const StadiumBorder(),
        minimumSize: size,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColor.brand.secondary,
          fontWeight: FontWeight.w300,
          letterSpacing: textLetterSpace,
        ),
      ),
    );
  }

  factory BootOptionButton.dark({
    required void Function()? onPressed,
    required String label,
    double? textLetterSpace,
    Size? size,
  }) {
    return BootOptionButton(
      onPressed: onPressed,
      buttonStyle: OutlinedButton.styleFrom(
        side: BorderSide(
          color: AppColor.brand.secondary,
          width: 0.5,
        ),
        backgroundColor: AppColor.brand.secondary,
        shape: const StadiumBorder(),
        minimumSize: size,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColor.text.white,
          fontWeight: FontWeight.w300,
          letterSpacing: textLetterSpace,
        ),
      ),
    );
  }

  factory BootOptionButton.credential({
    required void Function()? onPressed,
    required Widget icon,
    required String label,
    double? textLetterSpace,
    Size? size,
  }) {
    return BootOptionButton(
      onPressed: onPressed,
      buttonStyle: OutlinedButton.styleFrom(
        side: BorderSide(
          color: AppColor.brand.secondary,
          width: 0.5,
        ),
        backgroundColor: AppColor.ui.white,
        shape: const StadiumBorder(),
        minimumSize: size,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(width: MarginSize.normal),
          Text(
            label,
            style: TextStyle(
              color: AppColor.brand.secondary,
              fontWeight: FontWeight.w300,
              letterSpacing: textLetterSpace,
            ),
          ),
        ],
      ),
    );
  }

  final void Function()? onPressed;
  final Widget child;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: child,
    );
  }
}
