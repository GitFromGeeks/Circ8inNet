import 'package:flutter/material.dart';

Widget timeStepper(context) {
  return Card(
    color: Colors.green[900],
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Time",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                children: [
                  const Text("Choose time"),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_drop_down_sharp))
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.4,
            child: const Card(
              child: Center(
                child: Text("Time"),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
