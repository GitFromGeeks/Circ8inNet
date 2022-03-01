import 'package:flutter/material.dart';

Widget homePage(context) {
  return Stack(
    children: [
      const Image(
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          image: AssetImage('assets/images/signupbg.png')),
      Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text("Crick8inNet"),
              ),
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
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Playpals",
                            style: TextStyle(color: Colors.white, fontSize: 12),
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
          height: MediaQuery.of(context).size.height * 0.45,
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
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        const BorderSide(color: Colors.white))),
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
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        const BorderSide(color: Colors.white))),
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
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        const BorderSide(color: Colors.white))),
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
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        const BorderSide(color: Colors.white))),
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
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        const BorderSide(color: Colors.white))),
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
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        const BorderSide(color: Colors.white))),
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
                                    borderRadius: BorderRadius.circular(10.0),
                                    side:
                                        const BorderSide(color: Colors.white))),
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
          height: MediaQuery.of(context).size.height * 0.30,
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
    ],
  );
}
