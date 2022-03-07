import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget inviteFriends(context) {
  return AlertDialog(
    content: Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          const Image(
              width: 100,
              height: 100,
              image: AssetImage('assets/icons/player.png')),
          const Text("Invite your friend"),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                labelText: "Full Name"),
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                labelText: "E-mail"),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                labelText: "Phone number"),
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CupertinoButton(
                  color: Colors.green,
                  child: const Text("Invite"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          )
        ],
      ),
    ),
  );
}
