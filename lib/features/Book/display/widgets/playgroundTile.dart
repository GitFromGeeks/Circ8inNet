import 'package:cric8innet/Shared/constants.dart';
import 'package:cric8innet/Shared/routes.dart';
import 'package:cric8innet/features/Book/display/pages/playgroundInfo.dart';
import 'package:flutter/material.dart';

Widget playgroundTile(context) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, Routes.playgroundInfo);
    },
    child: Card(
      color: Constant.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListTile(
          leading: const Image(
            image: AssetImage('assets/images/ball.png'),
          ),
          title: const Text(
            "Dikhshant Global Cricket Ground",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            children: [
              Row(
                children: const [Icon(Icons.location_on), Text("Zirakpur")],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text("5")
                ],
              ),
            ],
          ),
          trailing: SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            child: const Card(
              color: Colors.black,
              child: Center(
                  child: Text(
                "view",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    ),
  );
}
