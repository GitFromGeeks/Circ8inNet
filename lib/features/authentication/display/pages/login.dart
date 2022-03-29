import 'dart:math';

import 'package:cric8innet/Shared/routes.dart';
import 'package:cric8innet/features/Home/display/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:cric8innet/Shared/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late SharedPreferences sharedPreferences;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return (isLoading)
        ? const CircularProgressIndicator()
        : Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Image(image: AssetImage('assets/images/login.png')),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(image: AssetImage("assets/icons/Loginarrow.png")),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        RotatedBox(
                          quarterTurns: 2,
                          child: Image(
                              image: AssetImage("assets/icons/Loginarrow.png")),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ),
                                labelText: "Username"),
                            controller: usernameController,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                labelText: "password"),
                            controller: passwordController,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Constant.primaryColor),
                              onPressed: () {
                                callAPI();
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Create an account"),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, Routes.signup);
                                  },
                                  child: const Text(
                                    "Signup",
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  callAPI() async {
    setState(() {
      isLoading = true;
    });
    signIn(usernameController.text, passwordController.text);
    setState(() {
      isLoading = false;
    });
  }

  signIn(String username, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    try {
      var response = await http.post(
          Uri.parse("http://cdemo.magnifyingevents.com/api/users/user_login"),
          body: {"username": username, "password": pass});
      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        if (jsonResponse != null) {
          // sharedPreferences.setString("token", jsonResponse['token']);
          sharedPreferences.setString("username", username);
          print("JSON DATA --------------------------------------------");

          sharedPreferences.setString(
              "token", jsonResponse.hashCode.toString());

          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (BuildContext context) => const Home()),
              (Route<dynamic> route) => false);
        }
      } else {}
    } catch (e) {
      print(e);
    }
  }
}
