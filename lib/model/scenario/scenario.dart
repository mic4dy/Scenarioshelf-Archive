import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trpg_system.dart';
part 'scenario.freezed.dart';

@freezed
class Scenario with _$Scenario {
  const factory Scenario({
    required int id,
    required TRPGSystem system,
    required String name,
    String? url,
    String? image,
  }) = _Scenario;

  factory Scenario.fromJson(Map<String, Object?> json) => _$ScenarioFromJson(json);
}
