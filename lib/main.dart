import 'package:firebase_core/firebase_core.dart';
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
  runApp(const ProviderScope(child: Scenarioshelf()));
}

class Scenarioshelf extends ConsumerWidget {
  const Scenarioshelf({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final theme = ThemeData(
      fontFamily: 'IBMPlexSansJP',
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
            titleTextStyle: TextStyle(
              color: AppColor.text.appBarTitle,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: IconThemeData(
              color: AppColor.brand.secondary,
            ),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
      primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
            color: AppColor.brand.secondary,
          ),
      textTheme: Theme.of(context).textTheme.apply(
            displayColor: AppColor.text.primary,
            bodyColor: AppColor.text.primary,
          ),
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: AppColor.brand.primary,
            secondary: AppColor.brand.secondary,
          ),
      scaffoldBackgroundColor: AppColor.ui.white,
    );

    return MaterialApp.router(
      title: 'Scenarioshelf',
      routerConfig: router,
      theme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
