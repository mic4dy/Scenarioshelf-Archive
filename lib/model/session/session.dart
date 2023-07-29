import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/model/session/schedule.dart';
import 'package:scenarioshelf/util/exception/convert_exception.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String userId,
    required String scenarioId,
    required DateTime createdAt,
    required DateTime updatedAt,
    List<Schedule>? schedules,
    String? charactor,
    String? memo,
  }) = _Session;

  factory Session.fromFirestore(DocumentSnapshot<Map<String, dynamic>> sessionRef) {
    final data = sessionRef.data();

    if (data == null) throw const ConvertException('Faild to convert Firestore to Session');

    return Session(
      id: sessionRef.id,
      userId: data['userId'] as String,
      scenarioId: data['scenarioId'] as String,
      schedules: data['schedules'] is Iterable<Map<String, dynamic>>
          ? (data['schedules'] as Iterable<Map<String, dynamic>>).map(Schedule.fromJson).toList()
          : null,
      charactor: data['charactor'] as String?,
      memo: data['memo'] as String?,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      updatedAt: (data['updatedAt'] as Timestamp).toDate(),
    );
  }
}
