import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/view/boot/boot_page.dart';
import 'package:scenarioshelf/view/signin/signin_page.dart';
import 'package:scenarioshelf/view/signup/signup_page.dart';

part 'router.g.dart';
part 'routes.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: Routes.splash.path,
    routes: [
      GoRoute(
        path: Routes.splash.path,
        redirect: (context, state) => Routes.boot.path,
      ),
      GoRoute(
        path: Routes.boot.path,
        builder: (context, state) => const BootPage(),
      ),
      GoRoute(
        path: Routes.signup.path,
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: Routes.signin.path,
        builder: (context, state) => const SigninPage(),
      ),
    ],
  );
}
