import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/model/scenario/scenario.dart';
import 'package:scenarioshelf/view/component/card/scenario/scenario_card.dart';
import 'package:scenarioshelf/view/component/label/label.dart';

class RecordPage extends StatelessWidget {
  const RecordPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.075),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Label(
              icon: Icons.book_outlined,
              text: Text('シナリオ'),
            ),
            const SizedBox(height: MarginSize.small),
            ScenarioCard(
              scenario: Scenario(
                id: 'id',
                system: TRPGSystem.mm,
                name: 'フォノグラフの少女ああああああああああああああああああああ',
                kana: 'ふぉのぐらふのしょうじょああああああああああああああああああああ',
                author: 'うろん堂',
                url: 'https://booth.pm/ja/items/3709678',
                // image: 'https://booth.pximg.net/f59bd628-ba7d-42a7-9624-dafe5617bd0f/i/3709678/e8320cda-05ac-472c-aaeb-a3f6f19eeba7_base_resized.jpg',
                numberOfPlayers: 4,
                playTime: const Duration(hours: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
