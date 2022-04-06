import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/routes.dart';

Widget bottomNavBar(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        color: const Color.fromARGB(255, 65, 63, 63),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.home);
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                    )),
                const Text("Meet",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ))
              ],
            ),
            // IconButton(
            //     onPressed: () {
            //       //
            //     },
            //     icon: const Icon(
            //       Icons.home,
            //       color: Colors.white,
            //     )),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, Routes.meet);
                    },
                    icon: const Icon(
                      Icons.connect_without_contact_rounded,
                      color: Colors.grey,
                    )),
                const Text("Meet  Soon",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 8,
                    ))
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, Routes.learnPage);
                    },
                    icon: const Icon(
                      Icons.cast_for_education_sharp,
                      color: Colors.grey,
                    )),
                const Text("Learn Soon",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 8,
                    ))
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.bookPage);
                    },
                    icon: const Icon(
                      Icons.event_note_sharp,
                      color: Colors.white,
                    )),
                const Text("Book",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ))
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      //
                      Navigator.pushNamed(context, Routes.profile);
                    },
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
                const Text("Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ))
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
