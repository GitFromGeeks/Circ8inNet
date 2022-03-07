import 'package:cric8innet/features/Meet/display/widgets/chooseButton.dart';
import 'package:cric8innet/features/Meet/display/widgets/topLeftButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget advanceSettingStepper(context) {
  return Container(
    color: Color.fromARGB(255, 3, 41, 4),
    child: Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 12, top: 12, bottom: 5),
            child: Text(
              "Advance Settings",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: chooseButton(context, "Public", const Icon(Icons.public)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child:
                  chooseButton(context, "Invite Only", const Icon(Icons.lock)),
            ),
          ],
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Game Skill",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "By default your overall rating skill for the sport will be taken as activity skill",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Activity Type",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Add Player details",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Enter player details",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoButton(
                color: Colors.white,
                child: const Text(
                  "Create event",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {}),
          ),
        )
      ],
    ),
  );
}
