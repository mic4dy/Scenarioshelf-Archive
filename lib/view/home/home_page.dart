import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/router/router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(routerProvider).push(Routes.report.path),
        backgroundColor: AppColor.brand.primary,
        child: Icon(
          Icons.auto_stories_outlined,
          color: AppColor.ui.white,
        ),
      ),
    );
  }
}
