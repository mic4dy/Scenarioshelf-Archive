import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/util/exception/convert_exception.dart';

part 'scenario.freezed.dart';
part 'trpg_system.dart';

@freezed
class Scenario with _$Scenario {
  @Assert('minNumberOfPlayers == null || !minNumberOfPlayers!.isNegative', '最小PL数が負の値になっています')
  @Assert('!numberOfPlayers!.isNegative', 'PL数が負の値になっています')
  @Assert('minNumberOfPlayers == null || minNumberOfPlayers < numberOfPlayers', 'PL数の整合性が取れていません')
  @Assert('!playTime!.isNegative', 'プレイ時間が負の値になっています')
  const factory Scenario({
    required String id,
    required TRPGSystem system,
    required String name,
    required String kana,
    required String author,
    required Duration playTime,
    required int numberOfPlayers,
    @Default(true) bool isNeedHost,
    int? minNumberOfPlayers,
    String? url,
    String? image,
  }) = _Scenario;
  const Scenario._();

  factory Scenario.fromFirestore(DocumentSnapshot<Map<String, dynamic>> scenarioRef) {
    final data = scenarioRef.data();

    if (data == null) throw const ConvertException('Faild to convert Firestore to Scenario');

    return Scenario(
      id: scenarioRef.id,
      system: TRPGSystem.fromId(data['system'] as String),
      name: data['name'] as String,
      kana: data['kana'] as String,
      author: data['author'] as String,
      isNeedHost: data['isNeedHost'] as bool,
      url: data['url'] as String?,
      image: data['image'] as String?,
      numberOfPlayers: data['numberOfPlayers'] as int,
      minNumberOfPlayers: data['minNumberOfPlayers'] as int?,
      playTime: Duration(minutes: data['playTime'] as int),
    );
  }
}
