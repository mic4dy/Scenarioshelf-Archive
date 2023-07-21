import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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

abstract class SessionRemoteRepositoryAPI {
  Future<Session> create({
    required String scenarioId,
    DateTime? eventDate,
    String? charactor,
    String? memo,
  });
  Future<Session> get({required String id});
  Future<List<Session>> list({required String uid});
  Future<Session> update({required Session session});
  Future<Session> delete({required String id});
}

class SessionRemoteRepository extends SessionRemoteRepositoryAPI {
  SessionRemoteRepository({
    required this.database,
  });

  final CollectionReference<Map<String, dynamic>> database;
  
  @override
  Future<Session> create({
    required String scenarioId,
    DateTime? eventDate,
    String? charactor,
    String? memo,
  }) async {
    final session = <String, dynamic>{
      'scenarioId': scenarioId,
      if (eventDate != null) 'eventDate': eventDate,
      if (charactor != null) 'charactor': charactor,
      if (memo != null) 'memo': memo,
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
  Future<Session> update({required Session session}) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Session> delete({required String id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
