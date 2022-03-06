import 'package:cric8innet/Shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cric8innet/Shared/routes.dart';

class ChooseAuth extends StatelessWidget {
  const ChooseAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const SizedBox(
            child: Image(
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage("assets/images/signupbg.png"))),
        const Padding(
          padding: EdgeInsets.only(
            top: 35,
            left: 130,
          ),
          child: SizedBox(
            width: 150,
            height: 100,
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage("assets/icons/logo.png")),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                      spreadRadius: 0.0,
                      offset: Offset(5.0, 5.0))
                ]),
                child: Card(
                  color: Constant.primaryColor,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(15)),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        children: [
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                height: 80,
                                width: 200,
                                image:
                                    AssetImage('assets/images/mycricket.png'),
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, Routes.signup);
                                },
                                child: const Text(
                                  "Let's get started",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 61, 57, 57)),
                                )),
                          ),
                        ],
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already a Plaholic? ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.login);
                      },
                      child: const Text(
                        "Signin",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "or",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                      spreadRadius: 0.0,
                      offset: Offset(5.0, 5.0))
                ]),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Image(
                            image: AssetImage("assets/icons/googlelogo.png"),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "               Sign in with Google",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
