import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/model/scenario/scenario.dart';
import 'package:scenarioshelf/util/gen/fonts.gen.dart';
import 'package:scenarioshelf/view/component/card/scenario/scenario_card.dart';
import 'package:scenarioshelf/view/record/record_section_panel.dart';
import 'package:scenarioshelf/view/record/scenario_search_form.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          // top: size.width * 0.025,
          left: size.width * 0.05,
          right: size.width * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: MarginSize.medium),
              child: Text(
                'Session',
                style: TextStyle(
                  color: AppColor.brand.primary,
                  fontFamily: FontFamily.iBMPlexSansJP,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            RecordSectionPanel(
              label: 'Scenario',
              children: [
                const ScenarioSearchForm(),
                const SizedBox(height: MarginSize.medium),
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
          ],
        ),
      ),
    );
  }
}
