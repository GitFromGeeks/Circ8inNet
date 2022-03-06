import 'package:cric8innet/features/Meet/display/widgets/activityButton.dart';
import 'package:cric8innet/features/Meet/display/widgets/chooseButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cric8innet/core/widgets/bottomBar.dart';
import '../widgets/topLeftButton.dart';
import '../widgets/meetingCard.dart';

class MeetPage extends StatelessWidget {
  const MeetPage({Key? key}) : super(key: key);

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
                    "  Meet &",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "   Activities",
                      style: TextStyle(fontSize: 25),
                    )),
                Row(
                  children: [
                    topLeftButton(context),
                    const Spacer(),
                    CupertinoButton(
                        padding: const EdgeInsets.all(8),
                        color: Colors.black,
                        child: const Text(
                          "Upcomming",
                          style: TextStyle(color: Colors.green),
                        ),
                        onPressed: () {}),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CupertinoButton(
                          padding: const EdgeInsets.all(8),
                          color: Colors.grey,
                          child: const Text(
                            "Past",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {}),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      " *Create Activity",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    chooseButton(
                        context,
                        "filter ",
                        const Icon(
                          Icons.filter_list,
                          color: Colors.black,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: chooseButton(
                          context,
                          "Sort ",
                          const Icon(
                            Icons.sort_outlined,
                            color: Colors.black,
                          )),
                    )
                  ],
                ),
                meetingCard(context, const Text("Warming Up")),
                meetingCard(
                    context,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Colors.yellow,
                        child: const Text(
                          "  Your booking",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "That's all you have in your calendar",
                        style: TextStyle(color: Colors.grey),
                      )),
                ),
                activityButton(context)
              ],
            ),
            bottomNavBar(context)
          ],
        ),
      ),
    );
  }
}
