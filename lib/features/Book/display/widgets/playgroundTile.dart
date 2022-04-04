import 'package:cric8innet/Shared/constants.dart';
import 'package:cric8innet/Shared/routes.dart';
import 'package:cric8innet/features/Book/data/models/venues.dart';
import 'package:cric8innet/features/Book/display/pages/playgroundInfo.dart';
import 'package:cric8innet/features/Book/display/provider/selectedVenueProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget playgroundTile(context, Venues venue) {
  return InkWell(
    onTap: () {
      Provider.of<selectedVenueProvider>(context, listen: false)
          .changeSelectedVenue(venue);
      Navigator.pushNamed(context, Routes.playgroundInfo);
    },
    child: Card(
      color: Constant.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListTile(
          leading: Image(
            image: NetworkImage(venue.venueImg!),
          ),
          title: Text(
            venue.venueName!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on),
                  Text(venue.venueCity!)
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text("5")
                ],
              ),
            ],
          ),
          trailing: SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            child: const Card(
              color: Colors.black,
              child: Center(
                  child: Text(
                "view",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    ),
  );
}
