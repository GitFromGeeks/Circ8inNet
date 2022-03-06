import 'package:cric8innet/features/authentication/display/pages/login.dart';
import 'package:cric8innet/splashScreen.dart';
import 'package:cric8innet/features/authentication/display/pages/chooseAuth.dart';
import 'package:cric8innet/features/authentication/display/pages/signup.dart';
import 'package:cric8innet/features/Home/display/pages/home.dart';
import 'package:cric8innet/features/Meet/display/pages/meet.dart';
import 'package:cric8innet/features/Meet/display/pages/ActivityInfo.dart';

class Routes {
  static const String login = '/login';
  static const String splash = '/splash';
  static const String choose = '/choose';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String meet = '/meet';
  static const String activityInfo = '/ActivityInfo';
}

final routes = {
  Routes.login: (context) => const LoginScreen(),
  Routes.splash: (context) => const SplashScreen(),
  Routes.choose: (context) => const ChooseAuth(),
  Routes.signup: (context) => const Signup(),
  Routes.home: (context) => const Home(),
  Routes.meet: (context) => const MeetPage(),
  Routes.activityInfo: (context) => const ActivityInfo(),
};
