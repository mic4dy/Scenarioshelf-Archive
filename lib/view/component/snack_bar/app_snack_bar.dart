import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';

class AppSnackBar extends SnackBar {
  AppSnackBar({
    required super.content,
    this.color,
    super.key,
  }) : super(
    margin: const EdgeInsets.all(MarginSize.middle),
    padding: const EdgeInsets.symmetric(horizontal: PaddingSize.middle),
    behavior: SnackBarBehavior.floating,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(ShapeSize.smallCircular),
    ),
    showCloseIcon: true,
    closeIconColor: color,
  );

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

  factory AppSnackBar.loading({
    required Widget content,
  }) => AppSnackBar(
    color: AppColor.ui.loading,
    content: Padding(
      padding: const EdgeInsets.all(PaddingSize.small),
      child: Row(
        children: [
          Icon(
            Icons.pending,
            color: AppColor.ui.loading,
          ),
          Text(
            'LOADING',
            style: TextStyle(
              color: AppColor.ui.loading,
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

  final Color? color;
}
