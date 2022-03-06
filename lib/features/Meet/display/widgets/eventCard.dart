import 'package:cric8innet/features/Meet/display/widgets/cancelEvent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/constants.dart';

Widget evenCard(context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Card(
        color: Constant.primaryColor,
        child: Column(
          children: [
            Row(
              children: [
                const Image(
                    width: 40,
                    height: 40,
                    image: AssetImage('assets/images/splash.png')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Zara",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Text(
                        "Warming Up",
                        style: TextStyle(fontSize: 10),
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 50,
                            child: CupertinoButton(
                                child: const Text("You"), onPressed: () {}),
                          ),
                          SizedBox(
                            width: 80,
                            height: 50,
                            child: CupertinoButton(
                                color: Colors.green,
                                child: const Text(
                                  "Host",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black),
                                ),
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: const [
                          Icon(
                            Icons.public,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.lock,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 12,
                          ),
                          Text(
                            "Tomorrow Night",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 12,
                          ),
                          Text(
                            "Cancel this event",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(width: 2, color: Colors.black)),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                const Text(
                  "Add Co-host",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(),
            FittedBox(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.41,
                      child: CupertinoButton(
                          color: Colors.black,
                          child: const Text(
                            "Add Players",
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                          onPressed: () {}),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.38,
                      child: CupertinoButton(
                          color: Colors.black,
                          child: const Text(
                            "Manage",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                          onPressed: () {}),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: CupertinoButton(
                          color: Colors.white,
                          child: const Text(
                            "All Players",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          onPressed: () {}),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ));
}
