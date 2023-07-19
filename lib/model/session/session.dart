import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/util/exception/convert_exception.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String scenarioId,
    DateTime? date,
    String? charactor,
    String? memo,
  }) = _Session;

  factory Session.fromFirestore(DocumentSnapshot<Map<String, dynamic>> sessionRef) {
    final data = sessionRef.data();

    if (data == null) throw const ConvertException('Faild to convert Firestore to Session');

    return Session(
      id: sessionRef.id,
      scenarioId: data['scenarioId'] as String,
      date: data['date'] is Timestamp ? (data['date'] as Timestamp).toDate() : null,
      charactor: data['scenarioId'] as String?,
      memo: data['memo'] as String?,
    );
  }
}
