import 'package:cric8innet/features/Book/display/provider/selectedVenueProvider.dart';
import 'package:cric8innet/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Shared/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => selectedVenueProvider(),
        )
      ],
      child: MaterialApp(
        title: "Cric8inNet",
        theme: ThemeData.light(),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        routes: routes,
      ),
    );
  }
}
