import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/model/scenario/scenario.dart';

class ScenarioCard extends StatelessWidget {
  const ScenarioCard({
    required this.scenario,
    super.key,
  });

  final Scenario scenario;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 256,
      child: Card(
        color: AppColor.ui.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: scenario.system.color,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Image.network(
                scenario.image!,
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
