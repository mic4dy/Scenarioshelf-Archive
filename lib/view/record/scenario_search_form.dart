import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/util/gen/fonts.gen.dart';

class ScenarioSearchForm extends StatelessWidget {
  const ScenarioSearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextFormField(
        cursorHeight: 12,
        cursorWidth: 1.5,
        style: const TextStyle(
          fontFamily: FontFamily.iBMPlexSansJP,
          fontSize: 12,
        ),
        decoration: InputDecoration(
          fillColor: AppColor.ui.white,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide.none,
          ),
          hintText: '検索',
          hintStyle: const TextStyle(
            fontFamily: FontFamily.iBMPlexSansJP,
            fontSize: 12,
          ),
          prefixIcon: const Icon(Icons.search),
          filled: true,
          isDense: true,
        ),
      ),
    );
  }
}
