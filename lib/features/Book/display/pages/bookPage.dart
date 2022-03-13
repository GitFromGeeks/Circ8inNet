import 'package:cric8innet/features/Book/display/widgets/blackButton.dart';
import 'package:cric8innet/features/Book/display/widgets/eventCard.dart';
import 'package:cric8innet/features/Book/display/widgets/playgroundTile.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Align(
                alignment: Alignment.topRight,
                child: Image(image: AssetImage('assets/images/meetbg.png'))),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "  Book &",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "   Venues",
                      style: TextStyle(fontSize: 25),
                    )),
                const SizedBox(
                  height: 12,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: "Search venue here"),
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
                // playgroundTile(context),
                // playgroundTile(context),
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Discover Events & Academies in your city",
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      eventCardBook('assets/images/stadium.png', "Dhamkapur"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}






































// import 'package:cric8innet/features/Book/display/widgets/blackButton.dart';
// import 'package:cric8innet/features/Book/display/widgets/eventCard.dart';
// import 'package:cric8innet/features/Book/display/widgets/playgroundTile.dart';
// import 'package:flutter/material.dart';

// class Book extends StatelessWidget {
//   const Book({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             const Align(
//                 alignment: Alignment.topRight,
//                 child: Image(image: AssetImage('assets/images/meetbg.png'))),
//             Column(
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.all(12.0),
//                   child: Align(
//                     alignment: Alignment.topRight,
//                     child: Icon(
//                       Icons.notifications,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 const Align(
//                   alignment: Alignment.topLeft,
//                   child: Text(
//                     "  Book &",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//                   ),
//                 ),
//                 const Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       "   Venues",
//                       style: TextStyle(fontSize: 25),
//                     )),
//                 const SizedBox(
//                   height: 12,
//                 ),
//                 Card(
//                   shape: RoundedRectangleBorder(
//                       side: const BorderSide(color: Colors.black),
//                       borderRadius: BorderRadius.circular(10.0)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: TextFormField(
//                       decoration:
//                           const InputDecoration(labelText: "Search venue here"),
//                     ),
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         "Find & Book venues nearby",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                 ),
//                 Row(
//                   children: [
//                     blackButton(
//                         "Favorites",
//                         const Icon(
//                           Icons.discount_rounded,
//                           color: Colors.white,
//                         )),
//                     blackButton(
//                         "Offer",
//                         const Icon(
//                           Icons.favorite_rounded,
//                           color: Colors.white,
//                         )),
//                     blackButton(
//                         "Quick Book",
//                         const Icon(
//                           Icons.book_online_outlined,
//                           color: Colors.white,
//                         )),
//                   ],
//                 ),
//                 // playgroundTile(context),
//                 // playgroundTile(context),
//                 const Padding(
//                   padding: EdgeInsets.only(left: 8),
//                   child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         "Events",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 18),
//                       )),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Align(
//                       alignment: Alignment.topLeft,
//                       child: Text(
//                         "Discover Events & Academies in your city",
//                         style: TextStyle(color: Colors.grey),
//                       )),
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       eventCardBook('assets/images/stadium.png', "Dhamkapur"),
//                     ],
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

