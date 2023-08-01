import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/model/scenario/scenario.dart';
import 'package:scenarioshelf/view/component/card/scenario/scenario_property_label.dart';
import 'package:shimmer/shimmer.dart';

class ScenarioCard extends StatelessWidget {
  const ScenarioCard({
    required this.scenario,
    super.key,
  });

  final Scenario scenario;
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: AppColor.ui.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.small),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.square(
                dimension: size.width * 0.25,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: scenario.image != null
                      ? Image.network(
                        scenario.image!,
                        fit: BoxFit.cover,
                        loadingBuilder: (_, child, loadingProgress) => loadingProgress == null
                            ? child
                            : Shimmer.fromColors(
                                baseColor: AppColor.ui.shimmerBase,
                                highlightColor: AppColor.ui.white,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  color: AppColor.ui.white,
                                ),
                              ),
                        errorBuilder: (_, __, ___) => _noImage(),
                      )
                      : _noImage(),
                ),
              ),
              const SizedBox(width: MarginSize.middle),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      scenario.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                    ),
                    Text(
                      scenario.kana,
                      style: TextStyle(
                        color: AppColor.text.gray,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: MarginSize.small),
                    ScenarioPropertyLabel.system(system: scenario.system),
                    ScenarioPropertyLabel.numberOfPlayers(
                      defaultOrMax: scenario.numberOfPlayers,
                      min: scenario.minNumberOfPlayers,
                    ),
                    ScenarioPropertyLabel.playTime(playTime: scenario.playTime),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _noImage() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.ui.gray,
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.image_not_supported_outlined,
              color: AppColor.ui.gray,
              size: 16,
            ),
            Text(
              'NO IMAGE',
              style: TextStyle(
                color: AppColor.text.gray,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
