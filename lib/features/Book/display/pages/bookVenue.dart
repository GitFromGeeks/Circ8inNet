import 'package:cric8innet/Shared/constants.dart';
import 'package:cric8innet/core/widgets/_backButton.dart';
import 'package:cric8innet/features/Book/data/models/venues.dart';
import 'package:cric8innet/features/Book/display/provider/selectedVenueProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookVenue extends StatefulWidget {
  const BookVenue({Key? key}) : super(key: key);

  @override
  State<BookVenue> createState() => _BookVenueState();
}

class _BookVenueState extends State<BookVenue> {
  @override
  Widget build(BuildContext context) {
    Venues? venue = Provider.of<selectedVenueProvider>(context).selectedvenues;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              backButton(context),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Text(
                venue!.venueName!,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
