import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/view/home/home.dart';
import 'package:scenarioshelf/view/signin/signin.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        redirect: (context, state) => '/signin',
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) => const SigninPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const Home(),
      ),
    ],
  );
}
