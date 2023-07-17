part of 'router.dart';

enum Routes {
  splash(path: '/path'),
  boot(path: '/boot'),
  signup(path: '/signup'),
  signin(path: '/signin'),
  home(path: '/home');

  const Routes({required this.path});

  final String path;
}
