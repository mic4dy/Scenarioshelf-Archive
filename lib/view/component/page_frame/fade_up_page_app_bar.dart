import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scenarioshelf/constant/app_color.dart';
import 'package:scenarioshelf/router/router.dart';

class FadeUpPageAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const FadeUpPageAppBar({
    super.key,
    this.title,
  });

  final Widget? title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColor.ui.white,
      elevation: 0,
      title: title,
      actions: <Widget>[
        IconButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(Icons.close),
          onPressed: () => ref.read(routerProvider).pop(),
        ),
      ],
    );
  }  
}
