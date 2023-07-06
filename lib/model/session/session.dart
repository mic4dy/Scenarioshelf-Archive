import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/model/scenario/scenario.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required int id,
    required Scenario scenario,
    String? charactor,
    String? memo,
  }) = _Session;

  factory Session.fromJson(Map<String, Object?> json) => _$SessionFromJson(json);
}
