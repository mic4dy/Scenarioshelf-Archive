import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
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
            fontWeight: FontWeight.w400,
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
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
