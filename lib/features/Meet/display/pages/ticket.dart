import 'package:cric8innet/Shared/constants.dart';
import 'package:cric8innet/Shared/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "The Match is on",
                style: TextStyle(color: Colors.grey, fontSize: 30),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Gear up!",
                style: TextStyle(color: Colors.grey, fontSize: 30),
              ),
            ),
          ),
          ticketDetails(Colors.white),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          Text("Time Slot"),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "1430",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "Hrs")
                          ]))
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Admission Details"),
                          Text("Zara Qureshi"),
                          Text("Aman Zaid"),
                          Text("Rizwan Khan")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  color: Constant.primaryColor,
                  child: ticketDetails(Constant.primaryColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: CupertinoButton(
                        color: Constant.primaryColor,
                        child: const Text("Close"),
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.meet);
                        }),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

Widget ticketDetails(color) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color: color,
      child: Row(
        children: [
          const Image(image: AssetImage('assets/images/ball.png')),
          Column(
            children: [
              const Text(
                "Zara",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Icon(Icons.watch_later_outlined),
                  Text("Tomorrow, Night")
                ],
              ),
              const Text("14th, February 2022"),
              const Text.rich(TextSpan(children: [
                TextSpan(text: "Karma"),
                TextSpan(
                    text: "75", style: TextStyle(fontWeight: FontWeight.bold))
              ]))
            ],
          ),
          const Icon(Icons.location_on_outlined),
          Expanded(
            child: Column(
              children: const [
                Text("6 B, Damodar Park, I B S Marg,"),
                Text("Ghatkopar (w), Mumbai"),
                Text("Maharashtra")
              ],
            ),
          )
        ],
      ),
    ),
  );
}
