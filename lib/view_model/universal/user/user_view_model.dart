import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/repository/remote/firebase/auth/firebase_auth_remote_repository.dart';

part 'user_view_model.g.dart';

@Riverpod(keepAlive: true)
class UserViewModel extends _$UserViewModel {
  late final FirebaseAuthAPI _authRepository;

  @override
  FutureOr<User?> build() {
    _authRepository = ref.watch(firebaseAuthRemoteRepositoryProvider);

    return _authRepository.getCurrentUser();
  }

  Future<void> signupWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () => _authRepository.signupWithEmailAndPassword(
        email: email,
        password: password,
      ),
    );
  }
}
