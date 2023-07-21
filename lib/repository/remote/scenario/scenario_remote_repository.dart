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

abstract class ScenarioRemoteRepositoryAPI {
  Future<Scenario> create({
    required TRPGSystem system,
    required String name,
    required String okurigana,
    String? url,
    String? image,
  });
  Future<Scenario> get({required String id});
  Future<List<Scenario>> list();
  Future<List<Scenario>> search({required String keyword});
}

class ScenarioRemoteRepository extends ScenarioRemoteRepositoryAPI {
  ScenarioRemoteRepository({
    required this.database,
  });

  final CollectionReference<Map<String, dynamic>> database;
  
  @override
  Future<Scenario> create({
    required TRPGSystem system,
    required String name,
    required String okurigana,
    String? url,
    String? image,
  }) {
    // TODO: implement create
    throw UnimplementedError();
  }
  
  @override
  Future<Scenario> get({required String id}) {
    // TODO: implement get
    throw UnimplementedError();
  }
  
  @override
  Future<List<Scenario>> list() {
    // TODO: implement list
    throw UnimplementedError();
  }
  
  @override
  Future<List<Scenario>> search({required String keyword}) {
    // TODO: implement search
    throw UnimplementedError();
  }
}
