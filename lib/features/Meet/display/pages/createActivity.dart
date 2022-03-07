import 'package:cric8innet/features/Meet/display/widgets/advanceSettingStepper.dart';
import 'package:cric8innet/features/Meet/display/widgets/dateStepper.dart';
import 'package:cric8innet/features/Meet/display/widgets/locationStepper.dart';
import 'package:cric8innet/features/Meet/display/widgets/timeStepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cric8innet/core/widgets/_backButton.dart';
import 'package:cric8innet/Shared/constants.dart';
import '../widgets/inviteFriends.dart';
import '../widgets/inviteSuccess.dart';

class CreateActivity extends StatefulWidget {
  const CreateActivity({Key? key}) : super(key: key);

  @override
  State<CreateActivity> createState() => _CreateActivityState();
}

class _CreateActivityState extends State<CreateActivity> {
  late int currentStep;
  @override
  void initState() {
    super.initState();
    currentStep = 0;
  }

  Future<void> inviteFriendsFunc() async {
    return showDialog(
        context: context,
        builder: (context) {
          return inviteFriends(context);
        });
  }

  Future<void> inviteAndSuccess() async {
    inviteSuccessFunc();
    inviteFriendsFunc();
  }

  Future<void> inviteSuccessFunc() async {
    return showDialog(
        context: context,
        builder: (context) {
          return inviteSuccess(context);
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constant.primaryColor,
        body: Stack(
          children: [
            const Align(
                alignment: Alignment.topRight,
                child: Image(
                    image: AssetImage('assets/icons/createActivityTop.png'))),
            SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: backButton(context),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Text(
                        "Create an",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Activity",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Stepper(
                    onStepContinue: () {
                      if (currentStep != 4) {
                        setState(() {
                          currentStep++;
                        });
                      }
                      if (currentStep == 4) {
                        setState(() {
                          currentStep = 3;
                        });
                        inviteAndSuccess();
                      }
                    },
                    onStepCancel: () {
                      if (currentStep != 0) {
                        setState(() {
                          currentStep--;
                        });
                      }
                    },
                    currentStep: currentStep,
                    onStepTapped: (index) {
                      setState(() {
                        currentStep = index;
                      });
                    },
                    steps: [
                      Step(
                          isActive: currentStep >= 0,
                          title: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: CupertinoButton(
                              color: Colors.green,
                              child: const Text("Location"),
                              onPressed: () {},
                            ),
                          ),
                          content: locationStepper(context)),
                      Step(
                          isActive: currentStep >= 1,
                          title: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: CupertinoButton(
                              color: Colors.green,
                              child: const Text("Date"),
                              onPressed: () {},
                            ),
                          ),
                          content: dateStepper(context)),
                      Step(
                          isActive: currentStep >= 2,
                          title: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: CupertinoButton(
                              color: Colors.green,
                              child: const Text("Time"),
                              onPressed: () {},
                            ),
                          ),
                          content: timeStepper(context)),
                      Step(
                          isActive: currentStep <= 3,
                          title: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.90,
                            child: CupertinoButton(
                              color: Colors.green,
                              child: const Text("Advance Settings"),
                              onPressed: () {},
                            ),
                          ),
                          content: advanceSettingStepper(context)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
