import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:go_router/go_router.dart';
import 'package:scenarioshelf/view/home/home.dart';

part 'router.g.dart';

@riverpod
GoRouter router (RouterRef ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        redirect: (context, state) => '/home',
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const Home(),
      ),
    ],
  );
}
