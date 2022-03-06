import 'package:flutter/material.dart';

Widget backButton(context) {
  return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(color: Colors.black, width: 4))),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text(
        "     Back    ",
        style: TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
      ));
}
