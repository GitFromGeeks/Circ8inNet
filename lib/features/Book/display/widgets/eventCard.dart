import 'package:flutter/material.dart';

Widget eventCardBook(url, title) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Card(
      child: Column(
        children: [
          Image(image: AssetImage(url)),
          Center(
            child: Text(title),
          )
        ],
      ),
    ),
  );
}
