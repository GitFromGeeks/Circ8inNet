// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
// import 'package:cric8innet/features/Meet/display/pages/meet.dart';
// import 'package:cric8innet/features/Learn/display/pages/learnPage.dart';
// import 'package:cric8innet/features/Book/display/pages/bookPage.dart';
// import 'package:cric8innet/features/Profile/display/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          const Image(
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/images/homebg.png')),
          Column(
            children: [
              Row(
                children: [
                  // const Padding(
                  //   padding: EdgeInsets.only(left: 8),
                  //   child: Text("Crick8inNet"),
                  // ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_alert_sharp,
                        color: Colors.white,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.location_pin,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      "Delhi Railway Station",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Card(
                  color: Colors.black,
                  child: Row(
                    children: [
                      IconButton(
                          iconSize: 50,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person_rounded,
                            color: Colors.white,
                          )),
                      Column(
                        children: const [
                          Text(
                            "Hey, Zara",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "Warming up",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          thickness: 2,
                          indent: 5,
                          endIndent: 0,
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                      Column(children: const [
                        Text(
                          "2",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "1",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                      Column(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Activities",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Playpals",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Card(
                  color: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.23,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.white))),
                              ),
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.choose);
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.calendar_today_sharp,
                                    size: 8,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "My Calendar",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12, left: 4, right: 4, bottom: 4),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.22,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.white))),
                              ),
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.choose);
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.note_alt_sharp,
                                    size: 8,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Activity",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12, left: 4, right: 4, bottom: 4),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.white))),
                              ),
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.choose);
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.lock_clock_sharp,
                                    size: 8,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Book",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12, left: 4, right: 4, bottom: 4),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.white))),
                              ),
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.choose);
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.favorite,
                                    size: 8,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "venues",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 4),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.white))),
                              ),
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.choose);
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.groups_sharp,
                                    size: 8,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Groups",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          right: 4,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.white))),
                              ),
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.choose);
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.stacked_bar_chart_rounded,
                                    size: 8,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Board",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.white))),
                              ),
                              onPressed: () {
                                // Navigator.pushNamed(context, Routes.choose);
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.local_offer_rounded,
                                    size: 8,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Offers",
                                    style: TextStyle(fontSize: 8),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Card(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Card(
                          color: Color.fromARGB(255, 212, 204, 204),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(18.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/icons/logo.png'),
                                ),
                              ),
                              Text(
                                "WITH PLAYERS NEARBY",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 25,
                                child: VerticalDivider(
                                  thickness: 2,
                                  indent: 5,
                                  endIndent: 0,
                                  width: 20,
                                  color: Color.fromARGB(255, 48, 48, 48),
                                ),
                              ),
                              Text(
                                "MEET",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Card(
                          color: Color.fromARGB(255, 212, 204, 204),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(18.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/icons/logo.png'),
                                ),
                              ),
                              Text(
                                "FROM PROFESSIONALS",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 25,
                                child: VerticalDivider(
                                  thickness: 2,
                                  indent: 5,
                                  endIndent: 0,
                                  width: 20,
                                  color: Color.fromARGB(255, 48, 48, 48),
                                ),
                              ),
                              Text(
                                "LEARN",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                color: Colors.black,
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
                            children: const [
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
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
                            onPressed: () {},
                            icon: const Icon(
                              Icons.connect_without_contact_rounded,
                              color: Colors.grey,
                            )),
                        const Text("Soon",
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
                              Icons.cast_for_education_sharp,
                              color: Colors.grey,
                            )),
                        const Text("Soon",
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
                              Icons.event_note_sharp,
                              color: Colors.grey,
                            )),
                        const Text("Soon",
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
          )
        ],
      ),
    ));
  }
}
  // late int index;
  // @override
  // void initState() {
  //   super.initState();
  //   index = 0;
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //       body: buildPage(),
  //       bottomNavigationBar: bottomBar(),
  //     ),
  //   );
  // }

  // Widget buildPage() {
  //   switch (index) {
  //     case 0:
  //       return homePage(context);
  //     case 1:
  //       return meetPage();
  //     case 2:
  //       return learnPage();
  //     case 3:
  //       return bookPage();
  //     case 4:
  //       return profile();
  //     default:
  //       return homePage(context);
  //   }
  // }

//   Widget bottomBar() {
//     return BottomNavyBar(
//         containerHeight: 60,
//         itemCornerRadius: 16,
//         backgroundColor: Colors.black,
//         selectedIndex: index,
//         onItemSelected: (index) => setState(() => this.index = index),
//         items: [
//           BottomNavyBarItem(
//               inactiveColor: Colors.white,
//               activeColor: Colors.white,
//               textAlign: TextAlign.center,
//               icon: const Icon(Icons.home),
//               title: const Text("Home",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ))),
//           BottomNavyBarItem(
//               inactiveColor: Colors.white,
//               activeColor: Colors.white,
//               textAlign: TextAlign.center,
//               icon: const Icon(Icons.connect_without_contact),
//               title: const Text("Meet",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ))),
//           BottomNavyBarItem(
//               inactiveColor: Colors.white,
//               activeColor: Colors.white,
//               textAlign: TextAlign.center,
//               icon: const Icon(Icons.cast_for_education_sharp),
//               title: const Text("Learn",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ))),
//           BottomNavyBarItem(
//               inactiveColor: Colors.white,
//               activeColor: Colors.white,
//               textAlign: TextAlign.center,
//               icon: const Icon(Icons.event_note_sharp),
//               title: const Text("Book",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ))),
//           BottomNavyBarItem(
//               inactiveColor: Colors.white,
//               activeColor: Colors.white,
//               textAlign: TextAlign.center,
//               icon: const Icon(Icons.person),
//               title: const Text("Me",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ))),
//         ]);
//   }
// }


















