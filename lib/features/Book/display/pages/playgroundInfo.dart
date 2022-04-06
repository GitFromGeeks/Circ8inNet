import 'dart:io';

import 'package:cric8innet/Shared/constants.dart';
import 'package:cric8innet/Shared/routes.dart';
import 'package:cric8innet/core/widgets/_backButton.dart';
import 'package:cric8innet/features/Book/data/models/venues.dart';
import 'package:cric8innet/features/Book/display/pages/bookVenue.dart';
import 'package:cric8innet/features/Book/display/provider/selectedDateProvider.dart';
import 'package:cric8innet/features/Book/display/provider/selectedVenueProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayGroundInfo extends StatefulWidget {
  const PlayGroundInfo({Key? key}) : super(key: key);

  @override
  State<PlayGroundInfo> createState() => _PlayGroundInfoState();
}

class _PlayGroundInfoState extends State<PlayGroundInfo> {
  late DateTime selectedDate;
  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2024));
    if (picked != null && picked != selectedDate) {
      // Provider.of<selectedDateProvider>(context).changeSelectedDate(picked);
      setState(() {
        selectedDate = picked;
      });
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BookVenue(date: selectedDate)));
    }
  }

  selectDateAndUpdateProvider() async {
    _selectDate(context);
    print("Date updated ----------------------------------------");
    Provider.of<selectedDateProvider>(context).changeSelectedDate(selectedDate);
    print("Provider Updated ------------------------");
  }

  @override
  Widget build(BuildContext context) {
    Venues? venue = Provider.of<selectedVenueProvider>(context).selectedvenues;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(50.0)),
                child: Image(
                    width: double.infinity,
                    height: 500,
                    image: NetworkImage(venue!.venueImg!)),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: backButton(context),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                venue.venueName!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                const Text("5"),
                const Spacer(),
                const Icon(Icons.location_on),
                Text(venue.venueCity!)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Expanded(
              child: Text(venue.venueDes!),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: CupertinoButton(
                color: Constant.primaryColor,
                child: const Text(
                  "Book this venue",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  _selectDate(context);
                }),
          )
        ],
      )),
    );
  }
}

Widget review() {
  return ListTile(
    leading: const Image(image: AssetImage('assets/images/ball.png')),
    title: const Text(
      "Siddharth Malhotra",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Column(
      children: [
        const Text("lorem ipsum dolor sit amet consectetur adispiscing elit."),
        Align(
          alignment: Alignment.centerLeft,
          child: Row(children: const [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          ]),
        )
      ],
    ),
  );
}
