import 'package:flutter/material.dart';

Widget blackButton(title, Widget iconname) {
  return Card(
    color: Colors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          iconname,
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    ),
  );
}
