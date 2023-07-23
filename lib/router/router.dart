import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/view/boot/boot_page.dart';
import 'package:scenarioshelf/view/component/page_frame/fade_up_page.dart';
import 'package:scenarioshelf/view/home/home_page.dart';
import 'package:scenarioshelf/view/record/record_page.dart';
import 'package:scenarioshelf/view/signing/signin/signin_page.dart';
import 'package:scenarioshelf/view/signing/signup/signup_page.dart';
import 'package:scenarioshelf/view_model/universal/user/user_view_model.dart';

part 'router.g.dart';
part 'routes.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: Routes.splash.path,
    routes: [
      GoRoute(
        path: Routes.splash.path,
        redirect: (context, state) {
          final userState = ref.watch(userViewModelProvider);

          if (userState is AsyncData && userState.value != null) return Routes.home.path;

          return Routes.boot.path;
        },
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
      GoRoute(
        path: Routes.home.path,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
