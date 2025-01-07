part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const GUIDE = _Paths.GUIDE;
  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;
  static const H5 = _Paths.H5;
  static const MAIN = _Paths.MAIN;

}

abstract class _Paths {
  _Paths._();
  static const GUIDE = '/guide';
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const H5 = '/h5';
  static const MAIN = '/main';

}

