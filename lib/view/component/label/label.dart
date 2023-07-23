import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/util/gen/fonts.gen.dart';

class Label extends StatelessWidget {
  const Label({
    required this.icon,
    required this.text,
    super.key,
  });

  final IconData icon;
  final Text text;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          icon,
          color: AppColor.brand.primary,
          size: IconSize.lanel,
        ),
        const SizedBox(width: 6),
        DefaultTextStyle(
          style: TextStyle(
            color: AppColor.text.primary,
            fontSize: FontSize.label,
            fontFamily: FontFamily.iBMPlexSansJP,
            fontWeight: FontWeight.w300,
            letterSpacing: SpaceSize.label,
            height: 1,
          ),
          child: text,
        ),
      ],
    );
  }
}
