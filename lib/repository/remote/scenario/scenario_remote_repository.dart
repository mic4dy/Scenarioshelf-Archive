import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/repository/remote/firebase/firestore/firestore_api.dart';

part 'scenario_remote_repository.g.dart';

@riverpod
ScenarioRemoteRepository scenarioRemoteRepository (ScenarioRemoteRepositoryRef ref) {
  final CollectionReference<Map<String, dynamic>> database = ref.read(firestoreAPIProvider.notifier).scenariosRef;
  return ScenarioRemoteRepository(
    database: database,
  );
}

abstract class ScenarioRemoteRepositoryAPI {}

class ScenarioRemoteRepository extends ScenarioRemoteRepositoryAPI {
  ScenarioRemoteRepository({
    required this.database,
  });

  final CollectionReference<Map<String, dynamic>> database;
}
