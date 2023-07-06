// ignore_for_file: library_private_types_in_public_api

import 'dart:ui';

class AppColor {
  static final _Brand brand = _Brand();
  static final _UI ui = _UI();
  static final _Text text = _Text();
}

class _Brand {
  final Color primary = const Color(0xFFffffff);
  final Color secondary = const Color(0xFF7c4e29);
  final Color secondaryLight = const Color(0xFFeddec3);
  final Color tertiary = const Color(0xFFc46a26);
}

class _UI {
  final Color white = const Color(0xFFffffff);
}

class _Text {
  final Color primary = const Color(0xFF373737);
  final Color appBarTitle = const Color(0xFF373737);
  final Color gray = const Color(0xFF808080);
  final Color blackMid = const Color(0x61000000);
  final Color white = const Color(0xFFFFFFFF);
  final Color blue = const Color(0xFF448AFF);
}
