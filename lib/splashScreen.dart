import 'dart:async';
import 'package:cric8innet/features/authentication/display/pages/chooseAuth.dart';
import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  late SharedPreferences sharedPreferences;

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    Timer(const Duration(seconds: 2), () {
      if (sharedPreferences.getString("token") == null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => const ChooseAuth()),
            (Route<dynamic> route) => false);
      } else {
        Navigator.pushNamed(context, Routes.home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Image(
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      image: AssetImage('assets/images/splash.png'),
    ));
  }
}
