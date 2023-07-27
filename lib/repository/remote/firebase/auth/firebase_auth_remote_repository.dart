import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_auth_remote_repository.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuthAPI firebaseAuthRemoteRepository(FirebaseAuthRemoteRepositoryRef ref) => FirebaseAuthRemoteRepository();

abstract interface class FirebaseAuthAPI {
  Future<User> signupWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<User> signinWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<User> signinWithGoogle();
  User? getCurrentUser();
  Future<void> signout();
}

class FirebaseAuthRemoteRepository implements FirebaseAuthAPI {
  @override
  Future<User> signupWithEmailAndPassword({required String email, required String password}) async {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (credential.user == null) throw FirebaseAuthException(code: 'user-null');

    return credential.user!;
  }

  @override
  Future<User> signinWithEmailAndPassword({required String email, required String password}) async {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (credential.user == null) throw FirebaseAuthException(code: 'user-null');

    return credential.user!;
  }

  @override
  Future<User> signinWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final OAuthCredential oauthCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    final credential = await FirebaseAuth.instance.signInWithCredential(oauthCredential);

    if (credential.user == null) throw FirebaseAuthException(code: 'user-null');

    return credential.user!;
  }

  @override
  User? getCurrentUser() => FirebaseAuth.instance.currentUser;

  @override
  Future<void> signout() => FirebaseAuth.instance.signOut();
}
