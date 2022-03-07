import 'package:cric8innet/Shared/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/constants.dart';

Widget inviteSuccess(context) {
  return AlertDialog(
    content: Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          const Image(
              width: 100,
              height: 100,
              image: AssetImage('assets/icons/player.png')),
          const Text(
            "Congratulations",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
              "We have successfully invited your friend for the match, see your calendar for more details"),
          const SizedBox(
            height: 12,
          ),
          CupertinoButton(
              color: Constant.primaryColor,
              child: const Text("ok"),
              onPressed: () {
                Navigator.pushNamed(context, Routes.meet);
              })
        ],
      ),
    ),
  );
}
