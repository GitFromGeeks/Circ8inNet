import 'dart:async';
import 'dart:convert';
import 'package:cric8innet/core/widgets/bottomBar.dart';
import 'package:cric8innet/features/Book/data/models/venues.dart';
import 'package:cric8innet/features/Book/display/widgets/blackButton.dart';
import 'package:cric8innet/features/Book/display/widgets/playgroundTile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  late bool isLoading;
  late List<Venues> venueList;

  @override
  void initState() {
    super.initState();
    callAPI();
  }

  callAPI() async {
    setState(() {
      isLoading = true;
    });
    venueList = await getVenues();
    setState(() {
      isLoading = false;
    });
  }

  Future<List<Venues>> getVenues() async {
    final response = await http.get(
        Uri.parse("http://cdemo.magnifyingevents.com/api/venue/venue_list"));
    if (response.statusCode == 200) {
      List<Venues> models = [];
      for (var i = 0;
          i < jsonDecode(response.body)['data']['venue_list'].length;
          i++) {
        var jsonData = jsonDecode(response.body)['data']['venue_list'];
        models =
            List<Venues>.from(jsonData.map((data) => Venues.fromJson(data)));
      }
      return models;
    } else {
      print("!=200");
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Stack(
                      children: const [
                        Align(
                            alignment: Alignment.topRight,
                            child: Image(
                                image: AssetImage('assets/images/meetbg.png'))),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.notifications,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "  Book &",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "   Venues",
                        style: TextStyle(fontSize: 25),
                      )),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: "Search venue here"),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Find & Book venues nearby",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                  Row(
                    children: [
                      blackButton(
                          "Favorites",
                          const Icon(
                            Icons.discount_rounded,
                            color: Colors.white,
                          )),
                      blackButton(
                          "Offer",
                          const Icon(
                            Icons.favorite_rounded,
                            color: Colors.white,
                          )),
                      blackButton(
                          "Quick Book",
                          const Icon(
                            Icons.book_online_outlined,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Events",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )),
                  ),
                  (isLoading)
                      ? const CircularProgressIndicator()
                      : Expanded(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  for (var i = 0; i < venueList.length; i++)
                                    playgroundTile(context, venueList[i])
                                ],
                              ),
                            ),
                          ),
                        ),
                  // const Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: Align(
                  //       alignment: Alignment.topLeft,
                  //       child: Text(
                  //         "Discover Events & Academies in your city",
                  //         style: TextStyle(color: Colors.grey),
                  //       )),
                  // ),
                  // Expanded(
                  //   child: SizedBox(
                  //     height: 200,
                  //     child: ListView.builder(
                  //         itemCount: 1,
                  //         itemBuilder: (context, int index) {
                  //           return eventCardBook(
                  //               'assets/images/stadium.png', "Dhamkapur");
                  //         }),
                  //   ),
                  // ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: SizedBox(
                  //         height: 200,
                  //         child: ListView.builder(
                  //             scrollDirection: Axis.horizontal,
                  //             shrinkWrap: true,
                  //             itemCount: 3,
                  //             itemBuilder: (context, int index) {
                  //               return eventCardBook(
                  //                   'assets/images/stadium.png', "Dhamkapur");
                  //             }),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            bottomNavBar(context),
          ],
        ),
      ),
    );
  }
}
