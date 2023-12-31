import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/model/scenario/scenario.dart';
import 'package:scenarioshelf/repository/remote/firebase/firestore/firestore_api.dart';

part 'scenario_remote_repository.g.dart';

@riverpod
ScenarioRemoteRepository scenarioRemoteRepository (ScenarioRemoteRepositoryRef ref) {
  final CollectionReference<Map<String, dynamic>> database = ref.read(firestoreAPIProvider.notifier).scenariosRef;
  return ScenarioRemoteRepository(
    database: database,
  );
}

abstract interface class ScenarioRemoteRepositoryAPI {
  Future<Scenario> create({
    required TRPGSystem system,
    required String name,
    required String kana,
    required String author,
    required int numberOfPlayers,
    required Duration playTime,
    int? minNumberOfPlayers,
    bool? isNeedHost,
    String? url,
    String? image,
  });
  Future<Scenario> get({required String id});
  Future<List<Scenario>> list();
  Future<List<Scenario>> search({required String keyword});
}

class ScenarioRemoteRepository implements ScenarioRemoteRepositoryAPI {
  ScenarioRemoteRepository({
    required this.database,
  });

  final CollectionReference<Map<String, dynamic>> database;
  
  @override
  Future<Scenario> create({
    required TRPGSystem system,
    required String name,
    required String kana,
    required String author,
    required int numberOfPlayers,
    required Duration playTime,
    int? minNumberOfPlayers,
    bool? isNeedHost,
    String? url,
    String? image,
  }) async {
    final scenario = <String, dynamic>{
      'system': system.id,
      'name': name,
      'kana': kana,
      'author': author,
      'numberOfPlayers': numberOfPlayers,
      'playTime': playTime.inMinutes,
      if (isNeedHost != null) 'isNeedHost': isNeedHost,
      if (minNumberOfPlayers != null) 'minNumberOfPlayers': minNumberOfPlayers,
      if (url != null) 'url': url,
      if (image != null) 'url': image,
    };
    
    final scenarioRef = database.doc();

    await scenarioRef.set(scenario);

    return get(id: scenarioRef.id);
  }
  
  @override
  Future<Scenario> get({required String id}) async {
    final scenarioRef = await database.doc(id).get();

    return Scenario.fromFirestore(scenarioRef);
  }
  
  @override
  Future<List<Scenario>> list() async {
    final scenariosRef = await database.get();

    return scenariosRef.docs.map(Scenario.fromFirestore).toList();
  }
  
  @override
  Future<List<Scenario>> search({required String keyword}) async {
    final scenariosRef = await database.where('name', isEqualTo: keyword).get();

    return scenariosRef.docs.map(Scenario.fromFirestore).toList();
  }
}
