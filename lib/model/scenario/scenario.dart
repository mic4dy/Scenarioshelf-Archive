import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/util/exception/convert_exception.dart';

part 'scenario.freezed.dart';
part 'trpg_system.dart';

@freezed
class Scenario with _$Scenario {
  @Assert('minNumberOfPlayers == null || !minNumberOfPlayers!.isNegative', '最小PL数が負の値になっています')
  @Assert('maxNumberOfPlayers == null || !maxNumberOfPlayers!.isNegative', '最大PL数が負の値になっています')
  @Assert('minNumberOfPlayers == null || maxNumberOfPlayers == null || minNumberOfPlayers <= maxNumberOfPlayers', 'PL数の整合性が取れていません')
  @Assert('playTime == null || !playTime!.isNegative', 'プレイ時間が負の値になっています')
  const factory Scenario({
    required String id,
    required TRPGSystem system,
    required String name,
    required String kana,
    required String author,
    @Default(true) bool isNeedHost,
    String? url,
    String? image,
    int? maxNumberOfPlayers,
    int? minNumberOfPlayers,
    Duration? playTime,
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
      maxNumberOfPlayers: data['maxNumberOfPlayers'] as int?,
      minNumberOfPlayers: data['minNumberOfPlayers'] as int?,
      playTime: (data['playTime'] != null) ? Duration(minutes: data['playTime'] as int) : null,
    );
  }

  int? get numberOfPlayers => maxNumberOfPlayers ?? minNumberOfPlayers;
}
