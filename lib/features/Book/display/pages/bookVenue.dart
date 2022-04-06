import 'dart:convert';
import 'package:cric8innet/core/widgets/_backButton.dart';
import 'package:cric8innet/features/Book/data/models/slot.dart';
import 'package:cric8innet/features/Book/data/models/slotsInADate.dart';
import 'package:cric8innet/features/Book/data/models/venues.dart';
import 'package:cric8innet/features/Book/display/provider/selectedVenueProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class BookVenue extends StatefulWidget {
  DateTime? date;
  BookVenue({Key? key, required this.date}) : super(key: key);

  @override
  State<BookVenue> createState() => _BookVenueState();
}

class _BookVenueState extends State<BookVenue> {
  late List<SlotsInADate> slotsInADate;
  late bool isLoading;
  SlotsInADate? slotsArray;
  String? dateStr;
  Venues? venues;

  @override
  void initState() {
    super.initState();
    // filterDateWise();
    convertDateToString(widget.date!);
  }

  callAPI() async {
    setState(() {
      isLoading = true;
    });
    slotsInADate = await getSlots();
    setState(() {
      isLoading = false;
    });
  }

  convertDateToString(DateTime date) async {
    String thismonth = date.month.toString();
    String thisDate = date.day.toString();
    if (date.month / 10 < 1) {
      thismonth = '0' + thismonth;
    }
    if (date.day / 10 < 1) {
      thisDate = '0' + thisDate;
    }
    String str = date.year.toString() + "-" + thismonth + "-" + thisDate;
    setState(() {
      dateStr = str;
    });
    callAPI();
  }

  Future<List<SlotsInADate>> getSlots() async {
    //TODO: change id Dynamically
    // String? id = venues!.venueId;
    String id = 12.toString();
    final response = await http.get(Uri.parse(
        "http://cdemo.magnifyingevents.com/api/venue/get_venue_slots?venue_id=$id/&slot_date=$dateStr"));

    if (response.statusCode == 200) {
      List<SlotsInADate> models = [];
      for (var i = 0;
          i < jsonDecode(response.body)['data']['slots_array'].length;
          i++) {
        var jsonData = jsonDecode(response.body)['data']['slots_array'];
        models = List<SlotsInADate>.from(
            jsonData.map((data) => SlotsInADate.fromJson(data)));
      }
      return models;
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    Venues? venue = Provider.of<selectedVenueProvider>(context).selectedvenues;
    venues = venue;
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
          (isLoading)
              ? const CircularProgressIndicator()
              : Column(
                  children: [Text(dateStr!), gridViewSlots(slotsInADate[0])],
                )
        ],
      ),
    ));
  }
}

Widget gridViewSlots(SlotsInADate slotsInADate) {
  return GridView.count(
    crossAxisCount: 4,
    crossAxisSpacing: 4.0,
    mainAxisSpacing: 4.0,
    shrinkWrap: true,
    children: [
      for (var i = 0; i < slotsInADate.slots!.length; i++)
        slotCard(
            slotsInADate.slots![i].startTime!,
            slotsInADate.slots![i].endTime,
            slotsInADate.price,
            slotsInADate.slots![i].isAvailable!)
    ],
  );
}

Widget slotCard(String starttime, endtime, price, bool isAvailable) {
  return GestureDetector(
    onTap: () {
      //
    },
    child: Card(
      child: Column(
        children: [
          Text(starttime),
          Text(endtime),
          Text(price),
          (isAvailable)
              ? const Icon(
                  Icons.event_available,
                  color: Colors.green,
                )
              : const Icon(
                  Icons.cancel_sharp,
                  color: Colors.red,
                )
        ],
      ),
    ),
  );
}
