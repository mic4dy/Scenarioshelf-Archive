import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/model/session/schedule.dart';
import 'package:scenarioshelf/model/session/session.dart';
import 'package:scenarioshelf/repository/remote/firebase/firestore/firestore_api.dart';

part 'session_remote_repository.g.dart';

@riverpod
SessionRemoteRepository sessionRemoteRepository (SessionRemoteRepositoryRef ref) {
  final CollectionReference<Map<String, dynamic>> database = ref.read(firestoreAPIProvider.notifier).sessionsRef;
  return SessionRemoteRepository(
    database: database,
  );
}

abstract interface class SessionRemoteRepositoryAPI {
  Future<Session> create({
    required String scenarioId,
    required String userId,
    List<Schedule>? schedules,
    String? charactor,
    String? memo,
  });
  Future<Session> get({required String id});
  Future<List<Session>> list({required String uid});
  Future<Session> update({required Session session});
  Future<String> delete({required String id});
}

class SessionRemoteRepository implements SessionRemoteRepositoryAPI {
  SessionRemoteRepository({
    required this.database,
  });

  final CollectionReference<Map<String, dynamic>> database;
  
  @override
  Future<Session> create({
    required String scenarioId,
    required String userId,
    List<Schedule>? schedules,
    String? charactor,
    String? memo,
  }) async {
    final session = <String, dynamic>{
      'scenarioId': scenarioId,
      'userId': userId,
      if (schedules != null) 'schedules': schedules.map((schedule) => schedule.toJson()).toList(),
      if (charactor != null) 'charactor': charactor,
      if (memo != null) 'memo': memo,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    };
    final sessionRef = database.doc();

    await sessionRef.set(session);

    return get(id: sessionRef.id);
  }
  
  @override
  Future<Session> get({required String id}) async {
    final sessionRef = await database.doc(id).get();

    return Session.fromFirestore(sessionRef);
  }
  
  @override
  Future<List<Session>> list({required String uid}) async {
    final sessionsRef = await database.where('userId', isEqualTo: uid).get();

    return sessionsRef.docs.map(Session.fromFirestore).toList();
  }
  
  @override
  Future<Session> update({required Session session}) async {
    await database.doc(session.id).update({
      if (session.schedules != null) 'schedules': session.schedules!.map((schedule) => schedule.toJson()).toList(),
      if (session.charactor != null) 'charactor': session.charactor,
      if (session.memo != null) 'memo': session.memo,
      'updatedAt': FieldValue.serverTimestamp(),
    });

    return get(id: session.id);
  }

  @override
  Future<String> delete({required String id}) async {
    await database.doc(id).delete();
    
    return id;
  }
}
