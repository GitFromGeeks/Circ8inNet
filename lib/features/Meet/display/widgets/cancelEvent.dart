import 'package:flutter/material.dart';

Widget cancelEvent(context) {
  return AlertDialog(
      content: Container(
    height: MediaQuery.of(context).size.height * 0.5,
    color: Colors.white,
    child: Column(
      children: const [
        Image(
            width: 100,
            height: 100,
            image: AssetImage('assets/images/ball.png')),
      ],
    ),
  ));
}
