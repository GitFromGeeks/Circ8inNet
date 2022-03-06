import 'package:flutter/material.dart';

Widget topLeftButton(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.4,
    child: Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(20.0))),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconButton(
                const Icon(
                  Icons.calendar_today,
                  color: Colors.green,
                  size: 35,
                ),
                "Calendar"),
            const SizedBox(
              width: 12,
            ),
            iconButton(
                const Icon(
                  Icons.developer_board_rounded,
                  color: Colors.green,
                  size: 35,
                ),
                "My Scorecard")
          ],
        ),
      ),
    ),
  );
}

Widget iconButton(Widget _icon, String title) {
  return GestureDetector(
    onTap: () {
      //
    },
    child: Column(
      children: [
        _icon,
        Text(
          title,
          style: const TextStyle(color: Colors.green, fontSize: 8),
        )
      ],
    ),
  );
}
