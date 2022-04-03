import 'package:cric8innet/core/widgets/bottomBar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Center(child: Text("Profile Page")),
            bottomNavBar(context)
          ],
        ),
      ),
    );
  }
}
