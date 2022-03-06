import 'package:flutter/material.dart';

Widget buildsheet(context) {
  return Card(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))),
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: ListView(
          // controller: controller,
          children: [
            const Text(
              "select Location",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  labelText: "search for area, street name.."),
            ),
            const ListTile(
              leading: Icon(Icons.location_searching_outlined),
              title: Text(
                "Use your current location",
                style: TextStyle(color: Colors.green),
              ),
              subtitle: Text("Dhakal, Zirakpur"),
              trailing: Icon(Icons.chevron_right_sharp),
            ),
            const Divider(),
            const Text("Nearby Locations"),
            const ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Rehmat Homes"),
              subtitle: Text("Dhakal, zirakpur"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Rehmat Homes"),
              subtitle: Text("Dhakal, zirakpur"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Rehmat Homes"),
              subtitle: Text("Dhakal, zirakpur"),
            ),
            const Divider(),
            const Text("Recent Locations"),
            const ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Rehmat Homes"),
              subtitle: Text("Dhakal, zirakpur"),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("powered by  "),
                Image(image: AssetImage('assets/icons/googlelogo.png'))
              ],
            )
          ],
        ),
      ),
    ),
  );
}
