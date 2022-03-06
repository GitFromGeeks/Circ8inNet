import 'package:cric8innet/core/widgets/_backButton.dart';
import 'package:cric8innet/features/Meet/display/widgets/cancelEvent.dart';
import 'package:cric8innet/features/Meet/display/widgets/eventCard.dart';
import 'package:flutter/material.dart';

class ActivityInfo extends StatelessWidget {
  const ActivityInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> cancelEventFunc() async {
      return showDialog(
          context: context,
          builder: (context) {
            return cancelEvent(context);
          });
    }

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Image(
                width: double.infinity,
                fit: BoxFit.cover,
                height: 300,
                image: AssetImage('assets/images/stadium.png')),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft, child: backButton(context)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                const Text(
                  "6 B Damodar Park, I B S Marg,",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Text(
                  "Ghatkopar(w), Mumbai, Maharashtra",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.location_on,
                        size: 12,
                      ),
                    ),
                    Text(
                      "Get directions",
                      style: TextStyle(fontSize: 10),
                    ),
                    Spacer(),
                    Icon(
                      Icons.watch_later_outlined,
                      size: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Tomorrow, Night",
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Player(1)",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
                GestureDetector(
                    onTap: () {
                      cancelEventFunc();
                    },
                    child: evenCard(context)),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.public,
                        size: 20,
                      ),
                      Text(
                        "This activity is public",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
