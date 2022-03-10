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
        color: Color.fromARGB(255, 65, 63, 63),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              child: Card(
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.home);
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
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
                      Navigator.pushNamed(context, Routes.meet);
                    },
                    icon: const Icon(
                      Icons.connect_without_contact_rounded,
                      color: Colors.grey,
                    )),
                const Text("Meet",
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
                      Navigator.pushNamed(context, Routes.learnPage);
                    },
                    icon: const Icon(
                      Icons.cast_for_education_sharp,
                      color: Colors.grey,
                    )),
                const Text("Learn",
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
                      color: Colors.grey,
                    )),
                const Text("Book",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 8,
                    ))
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
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
