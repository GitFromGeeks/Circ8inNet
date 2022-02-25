import 'package:cric8innet/views/login.dart';
import 'package:cric8innet/splashScreen.dart';

class Routes {
  static const String login = '/login';
  static const String splash = '/splash';
}

final routes = {
  Routes.login: (context) => const LoginScreen(),
  Routes.splash: (context) => const SplashScreen(),
};
