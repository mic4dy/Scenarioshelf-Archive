import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/view/record/record_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet<void>(
          context: context,
          showDragHandle: true,
          useSafeArea: true,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
          ),
          builder: (_) => const RecordPage(),
        ),
        backgroundColor: AppColor.brand.primary,
        child: Icon(
          Icons.auto_stories_outlined,
          color: AppColor.ui.white,
        ),
      ),
    );
  }
}
