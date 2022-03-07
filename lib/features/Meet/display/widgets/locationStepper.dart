import 'package:flutter/material.dart';

Widget locationStepper(context) {
  return Card(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.black)),
    color: Color.fromARGB(255, 149, 202, 147),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.topLeft, child: Text("Area")),
          ),
          Row(
            children: [
              const Text(
                "Choose Location",
                style: TextStyle(color: Colors.grey),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_down_sharp))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(color: Colors.black)),
              color: Colors.white,
              child: const Center(child: Text("MAP")),
            ),
          )
        ],
      ),
    ),
  );
}
