import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/util/gen/fonts.gen.dart';

class RecordSectionPanel extends StatelessWidget {
  const RecordSectionPanel({
    required this.label,
    this.children,
    super.key,
  });

  final String label;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: MarginSize.little,
        vertical: MarginSize.medium,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.brand.primaryLight,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: AppColor.brand.primary,
              fontFamily: FontFamily.iBMPlexSansJP,
              fontSize: FontSize.label,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Divider(height: MarginSize.large),
          if (children != null) ...children!,
        ],
      ),
    );
  }
}
