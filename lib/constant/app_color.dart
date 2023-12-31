// ignore_for_file: library_private_types_in_public_api

import 'dart:ui';

class AppColor {
  static final _Brand brand = _Brand();
  static final _UI ui = _UI();
  static final _Text text = _Text();
}

class _Brand {
  final Color primary = const Color(0xFF7c4e29);
  final Color primaryLight = const Color(0xFFf2eeea);
  final Color secondary = const Color(0xFFc46a26);
}

class _UI {
  final Color white = const Color(0xFFffffff);
  final Color gray = const Color(0xFFa9a9a9);
  final Color success = const Color(0xFF00ff33);
  final Color loading = const Color(0xFFffb300);
  final Color error = const Color(0xFFff3300);
  final Color shimmerBase = const Color(0xFFf5f5f5);
}

class _Text {
  final Color primary = const Color(0xFF000000);
  final Color white = const Color(0xFFffffff);
  final Color gray = const Color(0xFF696969);
  final Color error = const Color(0xFFc46a26);
  final Color snackBar = const Color(0xFF333333);
}
