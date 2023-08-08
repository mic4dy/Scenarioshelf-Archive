import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';

class AppSnackBar extends SnackBar {
  AppSnackBar({
    required super.content,
    this.color,
    super.key,
  }) : super(
    padding: const EdgeInsets.only(left: PaddingSize.medium),
    behavior: SnackBarBehavior.floating,
    elevation: 4,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: color != null ? color.withOpacity(0.5) : Colors.transparent,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(ShapeSize.smallCircular),
    ),
    backgroundColor: AppColor.ui.white,
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
            size: IconSize.snackBar,
            color: AppColor.ui.success,
          ),
          const SizedBox(width: MarginSize.minimum),
          Text(
            'SUCCESS',
            style: TextStyle(
              color: AppColor.ui.success,
            ),
          ),
          const SizedBox(width: MarginSize.medium),
          Flexible(
            child: DefaultTextStyle(
              style: TextStyle(
                color: AppColor.text.snackBar,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                height: 1.2,
              ),
              child: content,
            ),
          ),
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
            size: IconSize.snackBar,
            color: AppColor.ui.loading,
          ),
          const SizedBox(width: MarginSize.minimum),
          Text(
            'LOADING',
            style: TextStyle(
              color: AppColor.ui.loading,
            ),
          ),
          const SizedBox(width: MarginSize.medium),
          Flexible(
            child: DefaultTextStyle(
              style: TextStyle(
                color: AppColor.text.snackBar,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                height: 1.2,
              ),
              child: content,
            ),
          ),
        ],
      ),
    ),
  );

  factory AppSnackBar.error({
    required Widget content,
  }) => AppSnackBar(
    color: AppColor.ui.error,
    content: Row(
      children: [
        Icon(
          Icons.error,
          size: IconSize.snackBar,
          color: AppColor.ui.error,
        ),
        const SizedBox(width: MarginSize.minimum),
        Text(
          'ERROR',
          style: TextStyle(
            color: AppColor.ui.error,
          ),
        ),
        const SizedBox(width: MarginSize.medium),
        Flexible(
          child: DefaultTextStyle(
            style: TextStyle(
              color: AppColor.text.snackBar,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              height: 1.2,
            ),
            child: content,
          ),
        ),
      ],
    ),
  );

  final Color? color;
}
