import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/repository/remote/firebase/auth/firebase_auth_remote_repository.dart';
import 'package:scenarioshelf/util/exception/signing_exception.dart';

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

    try {
      final User user = await _authRepository.signupWithEmailAndPassword(
        email: email,
        password: password,
      );
      state = AsyncValue.data(user);
    } on FirebaseAuthException catch (error, stack) {
      Logger().e(
        'UserViewModel.signupWithEmailAndPassword',
        [error, stack],
      );
      if (error.code == 'weak-password') {
        state = AsyncValue.error(
          const SigningException(
            'Password is weak (FirebaseAuthException)',
            'パスワードが脆弱です',
          ),
          stack,
        );
      } else if (error.code == 'email-already-in-use') {
        state = AsyncValue.error(
          const SigningException(
            'Email is already in use (FirebaseAuthException)',
            '既に登録されたメールアドレスです',
          ),
          stack,
        );
      } else {
        state = AsyncValue.error(
          SigningException(
            error.toString(),
            '登録に失敗しました',
          ),
          stack,
        );
      }
    } on Exception catch (error, stack) {
      Logger().e(
        'UserViewModel.signupWithEmailAndPassword',
        [error, stack],
      );
      state = AsyncValue.error(
        SigningException(
          error.toString(),
          '原因不明のエラーが発生しました',
        ),
        stack,
      );
    }
  }

  Future<void> signinWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();

    try {
      final User user = await _authRepository.signinWithEmailAndPassword(
        email: email,
        password: password,
      );
      state = AsyncValue.data(user);
    } on FirebaseAuthException catch (error, stack) {
      Logger().e(
        'UserViewModel.signinWithEmailAndPassword',
        [error, stack],
      );
      if (error.code == 'user-not-found') {
        state = AsyncValue.error(
          const SigningException(
            'User is not found (FirebaseAuthException)',
            'メールアドレスかパスワード正しくありません',
          ),
          stack,
        );
      } else if (error.code == 'wrong-password') {
        state = AsyncValue.error(
          const SigningException(
            'Wrong password (FirebaseAuthException)',
            'メールアドレスかパスワード正しくありません',
          ),
          stack,
        );
      } else {
        state = AsyncValue.error(
          SigningException(
            error.toString(),
            'ログインに失敗しました',
          ),
          stack,
        );
      }
    } on Exception catch (error, stack) {
      Logger().e(
        'UserViewModel.signinWithEmailAndPassword',
        [error, stack],
      );
      state = AsyncValue.error(
        SigningException(
          error.toString(),
          '原因不明のエラーが発生しました',
        ),
        stack,
      );
    }
  }
}
