import 'package:flutter/material.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/constant/app_size.dart';
import 'package:scenarioshelf/model/scenario/scenario.dart';
import 'package:scenarioshelf/util/gen/fonts.gen.dart';

class ScenarioPropertyLabel extends StatelessWidget {
  const ScenarioPropertyLabel({
    required this.icon,
    required this.text,
    super.key,
  });

  factory ScenarioPropertyLabel.author({
    required String author,
  }) => ScenarioPropertyLabel(
    icon: Icon(
      Icons.draw_outlined,
      color: AppColor.ui.gray,
      size: IconSize.property,
    ),
    text: Text(
      author,
    ),
  );

  factory ScenarioPropertyLabel.system({
    required TRPGSystem system,
  }) => ScenarioPropertyLabel(
    icon: Icon(
      Icons.sports_esports_outlined,
      color: AppColor.ui.gray,
      size: IconSize.property,
    ),
    text: Text(
      system.name,
    ),
  );

  factory ScenarioPropertyLabel.numberOfPlayers({
    required int defaultOrMax,
    int? min,
  }) => ScenarioPropertyLabel(
    icon: Icon(
      Icons.person_outlined,
      color: AppColor.ui.gray,
      size: IconSize.property,
    ),
    text: Text(
      min != null ? '$min ~ $defaultOrMax 名' : '$defaultOrMax 名',
    ),
  );

  factory ScenarioPropertyLabel.playTime({
    required Duration playTime,
  }) => ScenarioPropertyLabel(
    icon: Icon(
      Icons.timer_outlined,
      color: AppColor.ui.gray,
      size: IconSize.property,
    ),
    text: Text(
      '${playTime.inMinutes} 分',
    ),
  );

  final Widget icon;
  final Widget text;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        icon,
        const SizedBox(width: MarginSize.small),
        DefaultTextStyle(
          style: TextStyle(
            color: AppColor.text.gray,
            fontFamily: FontFamily.iBMPlexSansJP,
            fontSize: 12,
          ),
          child: text,
        ),
      ],
    );
  }
}
