import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/routes.dart';

Widget chooseButton(context, String name, Widget iconname) {
  return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: const BorderSide(color: Colors.black))),
      ),
      onPressed: () {
        Navigator.pushNamed(context, Routes.choose);
      },
      child: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          iconname
        ],
      ));
}
