import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/util/exception/convert_exception.dart';

part 'scenario.freezed.dart';
part 'trpg_system.dart';

@freezed
class Scenario with _$Scenario {
  const factory Scenario({
    required String id,
    required TRPGSystem system,
    required String name,
    required String okurigana,
    String? url,
    String? image,
  }) = _Scenario;

  factory Scenario.fromFirestore(DocumentSnapshot<Map<String, dynamic>> scenarioRef) {
    final data = scenarioRef.data();

    if (data == null) throw const ConvertException('Faild to convert Firestore to Scenario');

    return Scenario(
      id: scenarioRef.id,
      system: TRPGSystem.fromId(data['system'] as String),
      name: data['name'] as String,
      okurigana: data['okurigana'] as String,
      url: data['url'] as String?,
      image: data['image'] as String?,
    );
  }
}
