import 'package:cric8innet/features/Book/display/pages/bookPage.dart';
import 'package:cric8innet/features/Book/display/pages/bookVenue.dart';
import 'package:cric8innet/features/Book/display/pages/playgroundInfo.dart';
import 'package:cric8innet/features/Learn/display/pages/learnPage.dart';
import 'package:cric8innet/features/Learn/display/pages/resource.dart';
import 'package:cric8innet/features/Meet/display/pages/ticket.dart';
import 'package:cric8innet/features/authentication/display/pages/login.dart';
import 'package:cric8innet/splashScreen.dart';
import 'package:cric8innet/features/authentication/display/pages/chooseAuth.dart';
import 'package:cric8innet/features/authentication/display/pages/signup.dart';
import 'package:cric8innet/features/Home/display/pages/home.dart';
import 'package:cric8innet/features/Meet/display/pages/meet.dart';
import 'package:cric8innet/features/Meet/display/pages/ActivityInfo.dart';
import 'package:cric8innet/features/Meet/display/pages/createActivity.dart';
import 'package:cric8innet/features/Profile/display/pages/profile.dart';

class Routes {
  static const String login = '/login';
  static const String splash = '/splash';
  static const String choose = '/choose';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String meet = '/meet';
  static const String activityInfo = '/ActivityInfo';
  static const String createActivity = '/createActivity';
  static const String learnPage = '/learnPage';
  static const String ticket = '/ticket';
  static const String resource = '/resource';
  static const String playgroundInfo = '/playgroundInfo';
  static const String bookVenue = '/bookVenue';
  static const String bookPage = '/bookpage';
  static const String profile = '/profile';
}

final routes = {
  Routes.login: (context) => const LoginScreen(),
  Routes.splash: (context) => const SplashScreen(),
  Routes.choose: (context) => const ChooseAuth(),
  Routes.signup: (context) => const Signup(),
  Routes.home: (context) => const Home(),
  Routes.meet: (context) => const MeetPage(),
  Routes.activityInfo: (context) => const ActivityInfo(),
  Routes.createActivity: (context) => const CreateActivity(),
  Routes.learnPage: (context) => const Learn(),
  Routes.ticket: (context) => const Ticket(),
  Routes.resource: (context) => const Resource(),
  Routes.playgroundInfo: (context) => const PlayGroundInfo(),
  Routes.bookVenue: (context) => const BookVenue(),
  Routes.bookPage: (context) => const Book(),
  Routes.profile: (context) => const Profile(),
};
