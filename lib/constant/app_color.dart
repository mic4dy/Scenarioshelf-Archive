// ignore_for_file: library_private_types_in_public_api

import 'dart:ui';

class AppColor {
  static final _Brand brand = _Brand();
  static final _UI ui = _UI();
  static final _Text text = _Text();
}

class _Brand {
  final Color primary = const Color(0xFF7c4e29);
  final Color primaryLight = const Color(0xFFeddec3);
  final Color secondary = const Color(0xFFc46a26);
}

class _UI {
  final Color white = const Color(0xFFffffff);
}

class _Text {
  final Color white = const Color(0xFFffffff);
  final Color error = const Color(0xFFc46a26);
}
