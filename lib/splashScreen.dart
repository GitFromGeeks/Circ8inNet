import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, Routes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Image(
      image: AssetImage('assets/images/splash.png'),
    ));
  }
}
