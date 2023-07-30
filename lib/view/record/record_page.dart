import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/model/scenario/scenario.dart';
import 'package:scenarioshelf/util/gen/fonts.gen.dart';
import 'package:scenarioshelf/view/component/card/scenario/scenario_card.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Session',
          style: TextStyle(
            fontFamily: FontFamily.iBMPlexSansJP,
            fontWeight: FontWeight.w500,
          ),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.elliptical(90, 30),
          ),
        ),
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Container(
              height: 500,
              color: AppColor.brand.primary,
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(250),
                ),
                color: AppColor.ui.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.width * 0.075,
                left: size.width * 0.075,
                right: size.width * 0.075,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
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
                  ),
                  const SizedBox(height: MarginSize.middle),
                  ScenarioCard(
                    scenario: Scenario(
                      id: 'id',
                      system: TRPGSystem.mm,
                      name: 'フォノグラフの少女',
                      kana: 'ふぉのぐらふのしょうじょ',
                      author: 'うろん堂',
                      url: 'https://booth.pm/ja/items/3709678',
                      image: 'https://booth.pximg.net/f59bd628-ba7d-42a7-9624-dafe5617bd0f/i/3709678/e8320cda-05ac-472c-aaeb-a3f6f19eeba7_base_resized.jpg',
                      numberOfPlayers: 4,
                      minNumberOfPlayers: 3,
                      playTime: const Duration(hours: 4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
