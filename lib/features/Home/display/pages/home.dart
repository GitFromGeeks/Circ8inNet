import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import './homePage.dart';
import 'package:cric8innet/features/Meet/display/pages/meet.dart';
import 'package:cric8innet/features/Learn/display/pages/learnPage.dart';
import 'package:cric8innet/features/Book/display/pages/bookPage.dart';
import 'package:cric8innet/features/Profile/display/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int index;
  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildPage(),
        bottomNavigationBar: bottomBar(),
      ),
    );
  }

  Widget buildPage() {
    switch (index) {
      case 0:
        return homePage(context);
      case 1:
        return meetPage();
      case 2:
        return learnPage();
      case 3:
        return bookPage();
      case 4:
        return profile();
      default:
        return homePage(context);
    }
  }

  Widget bottomBar() {
    return BottomNavyBar(
        containerHeight: 60,
        itemCornerRadius: 16,
        backgroundColor: Colors.black,
        selectedIndex: index,
        onItemSelected: (index) => setState(() => this.index = index),
        items: [
          BottomNavyBarItem(
              inactiveColor: Colors.white,
              activeColor: Colors.white,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.home),
              title: const Text("Home",
                  style: TextStyle(
                    color: Colors.white,
                  ))),
          BottomNavyBarItem(
              inactiveColor: Colors.white,
              activeColor: Colors.white,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.connect_without_contact),
              title: const Text("Meet",
                  style: TextStyle(
                    color: Colors.white,
                  ))),
          BottomNavyBarItem(
              inactiveColor: Colors.white,
              activeColor: Colors.white,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.cast_for_education_sharp),
              title: const Text("Learn",
                  style: TextStyle(
                    color: Colors.white,
                  ))),
          BottomNavyBarItem(
              inactiveColor: Colors.white,
              activeColor: Colors.white,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.event_note_sharp),
              title: const Text("Book",
                  style: TextStyle(
                    color: Colors.white,
                  ))),
          BottomNavyBarItem(
              inactiveColor: Colors.white,
              activeColor: Colors.white,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.person),
              title: const Text("Me",
                  style: TextStyle(
                    color: Colors.white,
                  ))),
        ]);
  }
}





















// Align(
//               alignment: Alignment.bottomCenter,
//               child: SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.7,
//                 height: MediaQuery.of(context).size.height * 0.1,
//                 child: Card(
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(30.0),
//                           topRight: Radius.circular(30.0))),
//                   color: Colors.black,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.home,
//                             color: Colors.white,
//                           )),
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.connect_without_contact_rounded,
//                             color: Colors.white,
//                           )),
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.cast_for_education_sharp,
//                             color: Colors.white,
//                           )),
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.event_note_sharp,
//                             color: Colors.white,
//                           )),
//                       IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.person,
//                             color: Colors.white,
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//             )