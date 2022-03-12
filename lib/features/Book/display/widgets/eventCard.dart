import 'package:flutter/material.dart';

Widget eventCardBook(url, title) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Card(
      child: Column(
        children: [
          Image(fit: BoxFit.fitWidth, image: AssetImage(url)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text(
                  "14th Nov 2022",
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
