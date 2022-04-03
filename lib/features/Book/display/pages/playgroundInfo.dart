import 'dart:io';

import 'package:cric8innet/Shared/constants.dart';
import 'package:cric8innet/Shared/routes.dart';
import 'package:cric8innet/core/widgets/_backButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayGroundInfo extends StatelessWidget {
  const PlayGroundInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Stack(
            children: [
              const ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50.0)),
                child: Image(
                    width: double.infinity,
                    height: 500,
                    image: AssetImage('assets/images/login.png')),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: backButton(context),
                    )),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Dikshant Global Cricket Ground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("5"),
                Spacer(),
                Icon(Icons.location_on),
                Text("Zirakpur")
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Expanded(
              child: Text(
                  "Lorem Ipsum dolor sit amet, connectetur adispscing elit. Anenean ilgula nunc, efficultur at tortor nec, maximus sodales est."),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.remove,
                      color: Colors.green,
                    ),
                    Text("1"),
                    Icon(
                      Icons.add,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CupertinoButton(
                color: Constant.primaryColor,
                child: const Text(
                  "Book this venue",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.bookVenue);
                }),
          )
        ],
      )),
    );
  }
}

Widget review() {
  return ListTile(
    leading: const Image(image: AssetImage('assets/images/ball.png')),
    title: const Text(
      "Siddharth Malhotra",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Column(
      children: [
        const Text("lorem ipsum dolor sit amet consectetur adispiscing elit."),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(children: const [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          ]),
        )
      ],
    ),
  );
}
