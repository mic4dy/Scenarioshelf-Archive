import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/repository/remote/firebase/firebase_options.dart';
import 'package:scenarioshelf/router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await initializeDateFormatting('ja_JP');
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
  if (kDebugMode) {
    try {
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    } catch (error, stack) {
      debugPrint(error.toString());
      debugPrint(stack.toString());
    }
  }
  runApp(const ProviderScope(child: Scenarioshelf()));
}

class Scenarioshelf extends ConsumerWidget {
  const Scenarioshelf({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final theme = ThemeData(
      fontFamily: 'IBMPlexSansJP',
      scaffoldBackgroundColor: AppColor.ui.white,
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: AppColor.brand.primary,
            secondary: AppColor.brand.secondary,
          ),
      textTheme: Theme.of(context).textTheme.copyWith(
            bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w300,
                ),
            bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w300,
                ),
            bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w300,
                ),
          ),
    );

    return MaterialApp.router(
      title: 'Scenarioshelf',
      routerConfig: router,
      theme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
