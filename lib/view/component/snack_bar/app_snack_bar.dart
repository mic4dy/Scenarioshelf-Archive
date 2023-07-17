import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_size.dart';

class AppSnackBar extends StatelessWidget {
  const AppSnackBar({
    required this.content,
    this.color,
    super.key,
  });

  final Widget content;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      margin: const EdgeInsets.all(MarginSize.middle),
      padding: const EdgeInsets.symmetric(horizontal: PaddingSize.middle),
      behavior: SnackBarBehavior.floating,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ShapeSize.smallCircular),
      ),
      showCloseIcon: true,
      closeIconColor: color,
      content: content,
    );
  }
}
