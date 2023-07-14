import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/view/boot/boot_page.dart';
import 'package:scenarioshelf/view/signin/signin_page.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        redirect: (context, state) => '/boot',
      ),
      GoRoute(
        path: '/boot',
        builder: (context, state) => const BootPage(),
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) => const SigninPage(),
      ),
    ],
  );
}
