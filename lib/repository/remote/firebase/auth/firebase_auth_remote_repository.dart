import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_auth_remote_repository.g.dart';

@riverpod
FirebaseAuthRemoteRepository firebaseAuthRemoteRepository(FirebaseAuthRemoteRepositoryRef ref) {
  final instanse = FirebaseAuth.instance;
  return FirebaseAuthRemoteRepository(instance: instanse);
}

abstract class FirebaseAuthAPI {}

class FirebaseAuthRemoteRepository extends FirebaseAuthAPI {
  FirebaseAuthRemoteRepository({required this.instance});

  final FirebaseAuth instance;
}
