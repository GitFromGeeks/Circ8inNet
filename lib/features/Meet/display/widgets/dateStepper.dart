import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/constants.dart';

Widget dateStepper(context) {
  return Card(
      child: Column(
    children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Date",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
      Card(
        color: Constant.primaryColor,
        shape:
            const RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text("dd / mm / yyyy"),
              Spacer(),
              Icon(Icons.calendar_today)
            ],
          ),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.4,
        child: const Center(child: Text("Calendar")),
      ),
    ],
  ));
}
