import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';

class AppSnackBar extends StatelessWidget {
  const AppSnackBar({
    required this.content,
    this.color,
    super.key,
  });

  factory AppSnackBar.success({
    required Widget content,
  }) => AppSnackBar(
    color: AppColor.ui.success,
    content: Padding(
      padding: const EdgeInsets.all(PaddingSize.small),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: AppColor.ui.success,
          ),
          Text(
            'SUCCESS',
            style: TextStyle(
              color: AppColor.ui.success,
            ),
          ),
          content,
        ],
      ),
    ),
  );

  factory AppSnackBar.error({
    required Widget content,
  }) => AppSnackBar(
    color: AppColor.ui.error,
    content: Padding(
      padding: const EdgeInsets.all(PaddingSize.small),
      child: Row(
        children: [
          Icon(
            Icons.error,
            color: AppColor.ui.error,
          ),
          Text(
            'ERROR',
            style: TextStyle(
              color: AppColor.ui.error,
            ),
          ),
          content,
        ],
      ),
    ),
  );

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
