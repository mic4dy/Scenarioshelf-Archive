import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FadeUpPage extends CustomTransitionPage<void> {
  FadeUpPage({
    required GoRouterState state,
    required super.child,
    super.transitionDuration = const Duration(milliseconds: 300),
    super.reverseTransitionDuration = const Duration(milliseconds: 300),
    super.maintainState = true,
    super.fullscreenDialog = false,
    super.opaque = true,
    super.barrierDismissible = false,
    super.barrierColor,
    super.barrierLabel,
    super.name,
    super.arguments,
    super.restorationId,
  }) : super(
    key: state.pageKey,
    transitionsBuilder: (_, animation, __, child) => SlideTransition(
      position: animation.drive(
        Tween<Offset>(
          begin: const Offset(0, 0.25),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
      ),
      child: FadeTransition(
        opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
        child: child,
      ),
    ),
  );
}
