import 'package:cric8innet/Shared/constants.dart';
import 'package:cric8innet/core/widgets/_backButton.dart';
import 'package:flutter/material.dart';

class BookVenue extends StatelessWidget {
  const BookVenue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.primaryColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: backButton(context),
        ),
        actions: const [
          Image(image: AssetImage('assets/images/createActivityTop.png'))
        ],
      ),
      body: Column(
        children: [
          const Text("Choose the number of seats you want to book"),
          Card(
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              children: const [
                Icon(
                  Icons.remove,
                  color: Colors.green,
                ),
                Text("1"),
                Icon(
                  Icons.add,
                  color: Colors.green,
                )
              ],
            ),
          ),
          const Image(
              width: double.infinity,
              image: AssetImage('assets/images/stadium.png')),
          // for (int i = 0; i < 8; i++)
          //   {
          //     for (int j = 0; j < 30; j++)
          //       {
          //         Container(
          //           child: Icon(
          //             Icons.stop,
          //             color: Colors.black,
          //           ),
          //         )
          //       }
          //   }
        ],
      ),
    );
  }
}































// import 'package:cric8innet/Shared/constants.dart';
// import 'package:cric8innet/core/widgets/_backButton.dart';
// import 'package:flutter/material.dart';

// class BookVenue extends StatelessWidget {
//   const BookVenue({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Constant.primaryColor,
//         title: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: backButton(context),
//         ),
//         actions: const [
//           Image(image: AssetImage('assets/images/createActivityTop.png'))
//         ],
//       ),
//       body: Column(
//         children: [
//           const Text("Choose the number of seats you want to book"),
//           Card(
//             shape: RoundedRectangleBorder(
//                 side: const BorderSide(color: Colors.green),
//                 borderRadius: BorderRadius.circular(10.0)),
//             child: Row(
//               children: const [
//                 Icon(
//                   Icons.remove,
//                   color: Colors.green,
//                 ),
//                 Text("1"),
//                 Icon(
//                   Icons.add,
//                   color: Colors.green,
//                 )
//               ],
//             ),
//           ),
//           const Image(
//               width: double.infinity,
//               image: AssetImage('assets/images/stadium.png')),
//           // for (int i = 0; i < 8; i++)
//           //   {
//           //     for (int j = 0; j < 30; j++)
//           //       {
//           //         Container(
//           //           child: Icon(
//           //             Icons.stop,
//           //             color: Colors.black,
//           //           ),
//           //         )
//           //       }
//           //   }
//         ],
//       ),
//     );
//   }
// }
