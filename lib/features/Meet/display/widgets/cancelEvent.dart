import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/constants.dart';

Widget cancelEvent(context) {
  return AlertDialog(
      content: Container(
    height: MediaQuery.of(context).size.height * 0.5,
    color: Colors.white,
    child: Column(
      children: [
        const Image(
            width: 100,
            height: 100,
            image: AssetImage('assets/images/ball.png')),
        const Text(
          "Cancellation Policy",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        const Text("Kindly be aware of the deductions before procedding"),
        const SizedBox(height: 30),
        const Text.rich(
          TextSpan(children: [
            TextSpan(
                text: "Withing 4 hours :",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: "100% Refund"),
          ]),
        ),
        const Text.rich(
          TextSpan(children: [
            TextSpan(
                text: "4-2 Hrs :",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: "50% Refund"),
          ]),
        ),
        const Text.rich(
          TextSpan(children: [
            TextSpan(
                text: "less than 2 Hrs :",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: "0% Refund"),
          ]),
        ),
        const SizedBox(height: 30),
        CupertinoButton(
            color: Constant.primaryColor,
            child: const Text("Proceed Cancellation",
                style: TextStyle(color: Colors.black)),
            onPressed: () {}),
        const SizedBox(height: 30),
        CupertinoButton(
            color: Colors.grey,
            child: const Text("Cancel", style: TextStyle(color: Colors.black)),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    ),
  ));
}
